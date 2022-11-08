.class public final Lcom/sonymobile/launcher/util/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseInt(Ljava/lang/String;I)I
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "def"    # I

    .line 20
    if-nez p0, :cond_0

    .line 21
    return p1

    .line 24
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 25
    :catch_0
    move-exception v0

    .line 29
    return p1
.end method
