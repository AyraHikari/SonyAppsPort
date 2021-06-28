.class public Lcom/sonyericsson/music/search/LabelItem;
.super Ljava/lang/Object;
.source "LabelItem.java"


# instance fields
.field private final mHasAction:Z

.field private final mLabel:Lcom/sonyericsson/music/search/Label;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/music/search/Label;Ljava/lang/String;Z)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/sonyericsson/music/search/LabelItem;->mLabel:Lcom/sonyericsson/music/search/Label;

    .line 19
    iput-object p2, p0, Lcom/sonyericsson/music/search/LabelItem;->mTitle:Ljava/lang/String;

    .line 20
    iput-boolean p3, p0, Lcom/sonyericsson/music/search/LabelItem;->mHasAction:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 57
    :cond_1
    check-cast p1, Lcom/sonyericsson/music/search/LabelItem;

    .line 59
    iget-boolean v2, p0, Lcom/sonyericsson/music/search/LabelItem;->mHasAction:Z

    iget-boolean v3, p1, Lcom/sonyericsson/music/search/LabelItem;->mHasAction:Z

    if-eq v2, v3, :cond_2

    return v1

    .line 63
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/music/search/LabelItem;->mLabel:Lcom/sonyericsson/music/search/Label;

    iget-object v3, p1, Lcom/sonyericsson/music/search/LabelItem;->mLabel:Lcom/sonyericsson/music/search/Label;

    if-eq v2, v3, :cond_3

    return v1

    .line 67
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/music/search/LabelItem;->mTitle:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object p1, p1, Lcom/sonyericsson/music/search/LabelItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_4
    iget-object p1, p1, Lcom/sonyericsson/music/search/LabelItem;->mTitle:Ljava/lang/String;

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_6
    :goto_1
    return v1
.end method

.method public getLabel()Lcom/sonyericsson/music/search/Label;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/sonyericsson/music/search/LabelItem;->mLabel:Lcom/sonyericsson/music/search/Label;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/sonyericsson/music/search/LabelItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/sonyericsson/music/search/LabelItem;->mLabel:Lcom/sonyericsson/music/search/Label;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 74
    iget-boolean v2, p0, Lcom/sonyericsson/music/search/LabelItem;->mHasAction:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 75
    iget-object v2, p0, Lcom/sonyericsson/music/search/LabelItem;->mTitle:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public isClickable()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/sonyericsson/music/search/LabelItem;->mHasAction:Z

    return v0
.end method
