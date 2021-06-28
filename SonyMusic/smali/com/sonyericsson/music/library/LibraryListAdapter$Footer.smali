.class public Lcom/sonyericsson/music/library/LibraryListAdapter$Footer;
.super Lcom/sonyericsson/music/library/LibraryListAdapter$SpecialItem;
.source "LibraryListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/LibraryListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Footer"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 456
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/library/LibraryListAdapter$SpecialItem;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Z)V
    .locals 0

    .line 460
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/library/LibraryListAdapter$SpecialItem;-><init>(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 465
    instance-of v0, p1, Lcom/sonyericsson/music/library/LibraryListAdapter$Footer;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 468
    :cond_0
    invoke-super {p0, p1}, Lcom/sonyericsson/music/library/LibraryListAdapter$SpecialItem;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .line 453
    invoke-super {p0}, Lcom/sonyericsson/music/library/LibraryListAdapter$SpecialItem;->hashCode()I

    move-result v0

    return v0
.end method
