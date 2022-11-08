.class public Lcom/android/launcher3/compat/AlphabeticIndexCompat;
.super Ljava/lang/Object;
.source "AlphabeticIndexCompat.java"


# static fields
.field private static final MID_DOT:Ljava/lang/String; = "\u2219"


# instance fields
.field private final mBaseIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

.field private final mDefaultMiscLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/compat/AlphabeticIndexCompat;-><init>(Landroid/os/LocaleList;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/os/LocaleList;)V
    .locals 7
    .param p1, "locales"    # Landroid/os/LocaleList;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/os/LocaleList;->size()I

    move-result v0

    .line 27
    .local v0, "localeCount":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    .line 28
    .local v2, "primaryLocale":Ljava/util/Locale;
    :goto_0
    new-instance v3, Landroid/icu/text/AlphabeticIndex;

    invoke-direct {v3, v2}, Landroid/icu/text/AlphabeticIndex;-><init>(Ljava/util/Locale;)V

    .line 29
    .local v3, "indexBuilder":Landroid/icu/text/AlphabeticIndex;
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_1
    const/4 v5, 0x1

    if-ge v4, v0, :cond_1

    .line 30
    new-array v5, v5, [Ljava/util/Locale;

    invoke-virtual {p1, v4}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v3, v5}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    .line 29
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 32
    .end local v4    # "i":I
    :cond_1
    new-array v4, v5, [Ljava/util/Locale;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    aput-object v5, v4, v1

    invoke-virtual {v3, v4}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    .line 33
    invoke-virtual {v3}, Landroid/icu/text/AlphabeticIndex;->buildImmutableIndex()Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->mBaseIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    .line 35
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 37
    const-string v1, "\u4ed6"

    iput-object v1, p0, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->mDefaultMiscLabel:Ljava/lang/String;

    goto :goto_2

    .line 42
    :cond_2
    const-string v1, "\u2219"

    iput-object v1, p0, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->mDefaultMiscLabel:Ljava/lang/String;

    .line 44
    :goto_2
    return-void
.end method


# virtual methods
.method public computeSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 6
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .line 50
    invoke-static {p1}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->mBaseIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    invoke-virtual {v1, v0}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucketIndex(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucket(I)Landroid/icu/text/AlphabeticIndex$Bucket;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/text/AlphabeticIndex$Bucket;->getLabel()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "sectionName":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 53
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 54
    .local v2, "c":I
    invoke-static {v2}, Ljava/lang/Character;->isDigit(I)Z

    move-result v3

    .line 55
    .local v3, "startsWithDigit":Z
    if-eqz v3, :cond_0

    .line 57
    const-string v4, "#"

    return-object v4

    .line 59
    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->isLetter(I)Z

    move-result v4

    .line 60
    .local v4, "startsWithLetter":Z
    if-eqz v4, :cond_1

    .line 61
    iget-object v5, p0, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->mDefaultMiscLabel:Ljava/lang/String;

    return-object v5

    .line 66
    :cond_1
    const-string v5, "\u2219"

    return-object v5

    .line 70
    .end local v2    # "c":I
    .end local v3    # "startsWithDigit":Z
    .end local v4    # "startsWithLetter":Z
    :cond_2
    return-object v1
.end method
