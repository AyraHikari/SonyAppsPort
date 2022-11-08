.class public Lcom/android/launcher3/util/PluralMessageFormat;
.super Ljava/lang/Object;
.source "PluralMessageFormat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getIcuPluralString(Landroid/content/Context;II)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stringId"    # I
    .param p2, "count"    # I

    .line 38
    new-instance v0, Landroid/icu/text/MessageFormat;

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 40
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 41
    .local v0, "icuCountFormat":Landroid/icu/text/MessageFormat;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 42
    .local v1, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "count"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-virtual {v0, v1}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
