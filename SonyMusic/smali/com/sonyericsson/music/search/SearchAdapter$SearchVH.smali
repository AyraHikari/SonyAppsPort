.class Lcom/sonyericsson/music/search/SearchAdapter$SearchVH;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SearchAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/search/SearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchVH"
.end annotation


# static fields
.field static final LAYOUT:I = 0x7f0c0062


# instance fields
.field final mContextIcon:Landroid/widget/ImageView;

.field final mContextMenuTouchArea:Landroid/widget/FrameLayout;

.field final mImgArt:Landroid/widget/ImageView;

.field private mItem:Lcom/sonyericsson/music/search/SearchItem;

.field private mListener:Lcom/sonyericsson/music/search/SearchAdapter$OnClickListener;

.field final mTxtPrimary:Landroid/widget/TextView;

.field final mTxtSecondary:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 1

    .line 392
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0901fb

    .line 394
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/music/search/SearchAdapter$SearchVH;->mTxtPrimary:Landroid/widget/TextView;

    const v0, 0x7f0901fc

    .line 395
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/music/search/SearchAdapter$SearchVH;->mTxtSecondary:Landroid/widget/TextView;

    const v0, 0x7f0900db

    .line 396
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/music/search/SearchAdapter$SearchVH;->mImgArt:Landroid/widget/ImageView;

    const v0, 0x7f090080

    .line 397
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/music/search/SearchAdapter$SearchVH;->mContextIcon:Landroid/widget/ImageView;

    const v0, 0x7f090081

    .line 398
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/music/search/SearchAdapter$SearchVH;->mContextMenuTouchArea:Landroid/widget/FrameLayout;

    .line 400
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchAdapter$SearchVH;->mContextMenuTouchArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 403
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bindListener(Lcom/sonyericsson/music/search/SearchAdapter$OnClickListener;Lcom/sonyericsson/music/search/SearchItem;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/sonyericsson/music/search/SearchAdapter$SearchVH;->mListener:Lcom/sonyericsson/music/search/SearchAdapter$OnClickListener;

    .line 410
    iput-object p2, p0, Lcom/sonyericsson/music/search/SearchAdapter$SearchVH;->mItem:Lcom/sonyericsson/music/search/SearchItem;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 415
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchAdapter$SearchVH;->mListener:Lcom/sonyericsson/music/search/SearchAdapter$OnClickListener;

    if-eqz v0, :cond_1

    .line 416
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne p1, v1, :cond_0

    .line 417
    iget-object v1, p0, Lcom/sonyericsson/music/search/SearchAdapter$SearchVH;->mItem:Lcom/sonyericsson/music/search/SearchItem;

    invoke-interface {v0, p1, v1}, Lcom/sonyericsson/music/search/SearchAdapter$OnClickListener;->onSearchItemClicked(Landroid/view/View;Lcom/sonyericsson/music/search/SearchItem;)V

    goto :goto_0

    .line 419
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/music/search/SearchAdapter$SearchVH;->mItem:Lcom/sonyericsson/music/search/SearchItem;

    invoke-interface {v0, p1, v1}, Lcom/sonyericsson/music/search/SearchAdapter$OnClickListener;->onSearchItemContextClicked(Landroid/view/View;Lcom/sonyericsson/music/search/SearchItem;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    .line 426
    iget-object p3, p0, Lcom/sonyericsson/music/search/SearchAdapter$SearchVH;->mListener:Lcom/sonyericsson/music/search/SearchAdapter$OnClickListener;

    if-eqz p3, :cond_0

    .line 427
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchAdapter$SearchVH;->mItem:Lcom/sonyericsson/music/search/SearchItem;

    invoke-interface {p3, p1, p2, v0}, Lcom/sonyericsson/music/search/SearchAdapter$OnClickListener;->onCreateSearchItemContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Lcom/sonyericsson/music/search/SearchItem;)V

    :cond_0
    return-void
.end method
