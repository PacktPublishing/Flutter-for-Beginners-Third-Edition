import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Form(
          key: _key,
          child: Column(
            children: <Widget>[
              VerificationCodeFormField(
                validator: (val) => val == null || val.isEmpty ? "Need a value" : null,
              ),
              Builder(
                builder: (BuildContext subContext) => TextButton(
                  onPressed: () {
                    final valid = Form.of(subContext).validate();
                    print("valid: $valid");
                  },
                  child: Text("validate"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class VerificationCodeInput extends StatefulWidget {
  VerificationCodeInput({required this.borderSide, required this.onChanged, required this.controller});
  final BorderSide borderSide;
  final Function(String) onChanged;
  final TextEditingController controller;

  @override
  State<VerificationCodeInput> createState() => _VerificationCodeInputState();
}

class _VerificationCodeInputState extends State<VerificationCodeInput> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp("[0-9]")),
        LengthLimitingTextInputFormatter(6),
      ],
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: widget.borderSide,
        ),
      ),
      keyboardType: TextInputType.number,
      onChanged: widget.onChanged,
    );
  }
}

class VerificationCodeFormField extends FormField<String> {
  VerificationCodeFormField({
    Key? key,
    FormFieldSetter<String>? onSaved,
    FormFieldValidator<String>? validator,
  }) : super(
          key: key,
          validator: validator,
          onSaved: onSaved,
          builder: (FormFieldState<String> field) {
            _VerificationCodeFormFieldState state = field as _VerificationCodeFormFieldState;
            return VerificationCodeInput(
              controller: state._controller,
              borderSide: BorderSide.none,
              onChanged: (_) => print(_),
            );
          },
        );
  @override
  FormFieldState<String> createState() => _VerificationCodeFormFieldState();
}

class _VerificationCodeFormFieldState extends FormFieldState<String> {
  final TextEditingController _controller = TextEditingController(text: "");
  @override
  void initState() {
    super.initState();
    _controller.addListener(_controllerChanged);
  }

  void _controllerChanged() {
    didChange(_controller.text);
  }

  @override
  void reset() {
    super.reset();
    _controller.text = "";
  }

  @override
  void dispose() {
    _controller.removeListener(_controllerChanged);
    super.dispose();
  }
}
