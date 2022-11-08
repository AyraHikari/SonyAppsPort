.class public Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;
.super Ljava/lang/Object;
.source "StringMatcherUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/search/StringMatcherUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringMatcher"
.end annotation


# static fields
.field private static final MAX_UNICODE:C = '\uffff'


# instance fields
.field private final mCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;->mCollator:Ljava/text/Collator;

    .line 120
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 121
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setDecomposition(I)V

    .line 122
    return-void
.end method

.method public static getInstance()Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;
    .locals 1

    .line 143
    new-instance v0, Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;

    invoke-direct {v0}, Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;-><init>()V

    return-object v0
.end method


# virtual methods
.method public matches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;->mCollator:Ljava/text/Collator;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 138
    return v1

    .line 130
    :pswitch_0
    return v2

    .line 136
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher3/search/StringMatcherUtility$StringMatcher;->mCollator:Ljava/text/Collator;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0xffff

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-le v0, v3, :cond_0

    move v1, v2

    :cond_0
    return v1

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
