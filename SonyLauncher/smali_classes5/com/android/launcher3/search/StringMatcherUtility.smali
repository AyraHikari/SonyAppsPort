.class public Lcom/android/launcher3/search/StringMatcherUtility;
.super Ljava/lang/Object;
.source "StringMatcherUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isBreak(III)Z
    .locals 3
    .param p0, "thisType"    # I
    .param p1, "prevType"    # I
    .param p2, "nextType"    # I

    .line 70
    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 77
    const/4 v1, 0x0

    sparse-switch p0, :sswitch_data_1

    .line 103
    return v1

    .line 75
    :sswitch_0
    return v0

    .line 101
    :sswitch_1
    return v0

    .line 93
    :sswitch_2
    const/16 v2, 0x9

    if-eq p1, v2, :cond_0

    const/16 v2, 0xa

    if-eq p1, v2, :cond_0

    const/16 v2, 0xb

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 88
    :sswitch_3
    const/4 v2, 0x5

    if-gt p1, v2, :cond_2

    if-gtz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :cond_2
    :goto_1
    return v0

    .line 79
    :sswitch_4
    if-ne p2, v0, :cond_3

    .line 80
    return v0

    .line 85
    :cond_3
    :sswitch_5
    if-eq p1, v0, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    return v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_3
        0x3 -> :sswitch_5
        0x9 -> :sswitch_2
        0xa -> :sswitch_2
        0xb -> :sswitch_2
        0x14 -> :sswitch_1
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x1a -> :sswitch_1
    .end sparse-switch
.end method

.method public static matches(Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;)Z
    .locals 9
    .param p0, "query"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "matcher"    # Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;

    .line 31
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 33
    .local v0, "queryLength":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 35
    .local v1, "targetLength":I
    const/4 v2, 0x0

    if-lt v1, v0, :cond_5

    if-gtz v0, :cond_0

    goto :goto_2

    .line 39
    :cond_0
    invoke-static {p0}, Lcom/android/launcher3/search/StringMatcherUtility;->requestSimpleFuzzySearch(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    return v2

    .line 44
    :cond_1
    const/4 v3, 0x0

    .line 45
    .local v3, "thisType":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->getType(I)I

    move-result v4

    .line 47
    .local v4, "nextType":I
    sub-int v5, v1, v0

    .line 48
    .local v5, "end":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-gt v6, v5, :cond_4

    .line 49
    move v7, v3

    .line 50
    .local v7, "lastType":I
    move v3, v4

    .line 51
    add-int/lit8 v8, v1, -0x1

    if-ge v6, v8, :cond_2

    .line 52
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->codePointAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->getType(I)I

    move-result v8

    goto :goto_1

    :cond_2
    move v8, v2

    :goto_1
    move v4, v8

    .line 53
    invoke-static {v3, v7, v4}, Lcom/android/launcher3/search/StringMatcherUtility;->isBreak(III)Z

    move-result v8

    if-eqz v8, :cond_3

    add-int v8, v6, v0

    .line 54
    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, p0, v8}, Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;->matches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 55
    const/4 v2, 0x1

    return v2

    .line 48
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 58
    .end local v6    # "i":I
    .end local v7    # "lastType":I
    :cond_4
    return v2

    .line 36
    .end local v3    # "thisType":I
    .end local v4    # "nextType":I
    .end local v5    # "end":I
    :cond_5
    :goto_2
    return v2
.end method

.method private static requestSimpleFuzzySearch(Ljava/lang/String;)Z
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .line 151
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 152
    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    .line 153
    .local v1, "codepoint":I
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 154
    sget-object v2, Lcom/android/launcher3/search/StringMatcherUtility$1;->$SwitchMap$java$lang$Character$UnicodeScript:[I

    invoke-static {v1}, Ljava/lang/Character$UnicodeScript;->of(I)Ljava/lang/Character$UnicodeScript;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Character$UnicodeScript;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 159
    .end local v1    # "codepoint":I
    goto :goto_0

    .line 157
    .restart local v1    # "codepoint":I
    :pswitch_0
    const/4 v2, 0x1

    return v2

    .line 160
    .end local v0    # "i":I
    .end local v1    # "codepoint":I
    :cond_0
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
