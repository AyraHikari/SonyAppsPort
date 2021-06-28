.class Lcom/sonyericsson/music/library/LibraryListAdapter$SpecialItem;
.super Ljava/lang/Object;
.source "LibraryListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/LibraryListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpecialItem"
.end annotation


# instance fields
.field final mSelectable:Z

.field final mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    iput-object p1, p0, Lcom/sonyericsson/music/library/LibraryListAdapter$SpecialItem;->mView:Landroid/view/View;

    const/4 p1, 0x1

    .line 380
    iput-boolean p1, p0, Lcom/sonyericsson/music/library/LibraryListAdapter$SpecialItem;->mSelectable:Z

    return-void
.end method

.method constructor <init>(Landroid/view/View;Z)V
    .locals 0

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    iput-object p1, p0, Lcom/sonyericsson/music/library/LibraryListAdapter$SpecialItem;->mView:Landroid/view/View;

    .line 385
    iput-boolean p2, p0, Lcom/sonyericsson/music/library/LibraryListAdapter$SpecialItem;->mSelectable:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 394
    :cond_0
    instance-of v1, p1, Lcom/sonyericsson/music/library/LibraryListAdapter$SpecialItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 398
    :cond_1
    check-cast p1, Lcom/sonyericsson/music/library/LibraryListAdapter$SpecialItem;

    .line 400
    iget-object p1, p1, Lcom/sonyericsson/music/library/LibraryListAdapter$SpecialItem;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/sonyericsson/music/library/LibraryListAdapter$SpecialItem;->mView:Landroid/view/View;

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/sonyericsson/music/library/LibraryListAdapter$SpecialItem;->mView:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
