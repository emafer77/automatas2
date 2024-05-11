import { StatusBar } from "expo-status-bar";
import { useEffect, useState } from "react";
import { ScrollView, SafeAreaView, StyleSheet, Text, View } from "react-native";

export default function App() {
  const [musculos, setMusculos] = useState([]);
  useEffect(() => {
    fetchData();
  }, []);

  async function fetchData() {
    try {
      const response = await fetch("http://140.10.5.160:8080/musculos/14");
      console.log("Response status:", response.status);
      const data = await response.json();
      setMusculos(data);
    } catch (error) {
      console.error("Error fetching data:", error);
    }
  }

  return (
    <SafeAreaView style={styles.container}>
      <ScrollView style={styles.scrollView}>
        <Text style={styles.title}>{musculos.nombre}</Text>
        <Text>{musculos.descripcion}</Text>
      </ScrollView>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: "#416C7C",
    color: "#fff",
    paddingTop: 50,
  },
  scrollView: {
    backgroundColor: "#416C7C",
    marginHorizontal: 20,
  },
  title: {
    color: "#D4E4EA",
    fontSize: 30,
  },
});
