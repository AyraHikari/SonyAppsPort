.class Lcom/airbnb/lottie/parser/MergePathsParser;
.super Ljava/lang/Object;
.source "MergePathsParser.java"


# static fields
.field private static final NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 9
    const-string v0, "nm"

    const-string v1, "mm"

    const-string v2, "hd"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/MergePathsParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;)Lcom/airbnb/lottie/model/content/MergePaths;
    .locals 4
    .param p0, "reader"    # Lcom/airbnb/lottie/parser/moshi/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    const/4 v0, 0x0

    .line 19
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 20
    .local v1, "mode":Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;
    const/4 v2, 0x0

    .line 22
    .local v2, "hidden":Z
    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 23
    sget-object v3, Lcom/airbnb/lottie/parser/MergePathsParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {p0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 34
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 35
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    .line 31
    :pswitch_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextBoolean()Z

    move-result v2

    .line 32
    goto :goto_0

    .line 28
    :pswitch_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v3

    invoke-static {v3}, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->forId(I)Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    move-result-object v1

    .line 29
    goto :goto_0

    .line 25
    :pswitch_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 26
    goto :goto_0

    .line 39
    :cond_0
    new-instance v3, Lcom/airbnb/lottie/model/content/MergePaths;

    invoke-direct {v3, v0, v1, v2}, Lcom/airbnb/lottie/model/content/MergePaths;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;Z)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
