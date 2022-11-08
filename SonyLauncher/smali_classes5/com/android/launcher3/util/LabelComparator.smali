.class public Lcom/android/launcher3/util/LabelComparator;
.super Ljava/lang/Object;
.source "LabelComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCollator:Ljava/text/Collator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/LabelComparator;->mCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 25
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/util/LabelComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "titleA"    # Ljava/lang/String;
    .param p2, "titleB"    # Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    .line 34
    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 35
    .local v0, "aStartsWithLetter":Z
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 36
    invoke-virtual {p2, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    nop

    .line 37
    .local v2, "bStartsWithLetter":Z
    :goto_1
    if-eqz v0, :cond_2

    if-nez v2, :cond_2

    .line 38
    const/4 v1, -0x1

    return v1

    .line 39
    :cond_2
    if-nez v0, :cond_3

    if-eqz v2, :cond_3

    .line 40
    return v1

    .line 44
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/util/LabelComparator;->mCollator:Ljava/text/Collator;

    invoke-virtual {v1, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method
