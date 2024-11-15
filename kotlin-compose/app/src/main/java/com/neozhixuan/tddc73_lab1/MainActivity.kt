package com.neozhixuan.tddc73_lab1

// `material3` library
// Modifiers provide different paddings and gaps
import androidx.compose.foundation.Image
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.material3.*
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.painterResource
import androidx.compose.ui.text.input.TextFieldValue
import androidx.compose.ui.unit.dp
import androidx.compose.ui.tooling.preview.Preview

// `material3` is an experimental API
@OptIn(ExperimentalMaterial3Api::class)
// @composable defines this component as part of the UI
@Composable
fun ExampleScreen() {
    // Scaffold is the layout with top bar
    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text(text = "Example 1 - Kotlin Compose") },
                colors = TopAppBarDefaults.smallTopAppBarColors(MaterialTheme.colorScheme.primaryContainer))
        }
    ) { paddingValues ->
        // Vertical stack
        Column(
            // Column fill the entire screen
            // Use padding provided by the Scaffold
            modifier = Modifier
                .fillMaxSize()
                .padding(paddingValues),
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.Top
        ) {
            // Circular UI placeholder
            Surface(
                modifier = Modifier
                    .size(150.dp)
                    .padding(16.dp),
                shape = CircleShape,
                color = Color.LightGray // Replace with your desired background color
            ) {
                // xDisplays an image (R.drawable.wheel) loaded as a drawable resource
                Image(
                    painter = painterResource(id = R.drawable.wheel), // Replace with your image name
                    contentDescription = "Circular Image",
                    modifier = Modifier.size(150.dp) // Adjust size if needed
                )
            }

            // Buttons arranged in a grid layout
            Spacer(modifier = Modifier.height(16.dp))
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceAround
            ) {
                Button(onClick = {}) {
                    Text("BUTTON")
                }
                Button(onClick = {}) {
                    Text("BUTTON")
                }
            }
            Spacer(modifier = Modifier.height(16.dp))
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceAround
            ) {
                Button(onClick = {}) {
                    Text("BUTTON")
                }
                Button(onClick = {}) {
                    Text("BUTTON")
                }
            }

            Spacer(modifier = Modifier.height(32.dp))

            // Email input field with label
            Row(
                modifier = Modifier.fillMaxWidth(0.9f),
                verticalAlignment = Alignment.CenterVertically
            ) {
                Text("Email")
                Spacer(modifier = Modifier.width(15.dp))
                OutlinedTextField(
                    value = TextFieldValue(""),
                    onValueChange = {},
                    modifier = Modifier.fillMaxWidth(),
                    singleLine = true
                )
            }
        }
    }
}

@Preview(showBackground = true)
@Composable
fun PreviewExampleScreen() {
    ExampleScreen()
}
