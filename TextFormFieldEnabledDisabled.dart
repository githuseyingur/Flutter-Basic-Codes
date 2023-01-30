bool _formEnabled = true;

TextFormField(              
          enabled: _formEnabled,  // true - false
  
          enabledBorder: OutlineInputBorder(
             borderSide: BorderSide(
                           color: others,
                           width: widthSize*0.24,
                           style: BorderStyle.solid
                        ),
             borderRadius: BorderRadius.circular(widthSize*2.4)
          ),
         disabledBorder: OutlineInputBorder(
             borderSide: BorderSide(
                           color: others,
                           width: widthSize*0.24,
                           style: BorderStyle.solid
                        ),
             borderRadius: BorderRadius.circular(widthSize*2.4)
          ),
    ), // TEXTFORMFIELD

...
  
 setState(() {
        _formEnabled = false;
 });
