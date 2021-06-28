.class Lcom/sonyericsson/music/search/SearchAdapter$LabelVH;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SearchAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/search/SearchAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LabelVH"
.end annotation


# static fields
.field static final LAYOUT:I = 0x7f0c005d


# instance fields
.field final mButton:Landroid/widget/TextView;

.field private mItem:Lcom/sonyericsson/music/search/LabelItem;

.field final mLabel:Landroid/widget/TextView;

.field private mListener:Lcom/sonyericsson/music/search/SearchAdapter$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 358
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0900f0

    .line 359
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/music/search/SearchAdapter$LabelVH;->mLabel:Landroid/widget/TextView;

    const v0, 0x7f0900ef

    .line 360
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sonyericsson/music/search/SearchAdapter$LabelVH;->mButton:Landroid/widget/TextView;

    .line 361
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchAdapter$LabelVH;->mButton:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public bindListener(Lcom/sonyericsson/music/search/SearchAdapter$OnClickListener;Lcom/sonyericsson/music/search/LabelItem;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/sonyericsson/music/search/SearchAdapter$LabelVH;->mListener:Lcom/sonyericsson/music/search/SearchAdapter$OnClickListener;

    .line 373
    iput-object p2, p0, Lcom/sonyericsson/music/search/SearchAdapter$LabelVH;->mItem:Lcom/sonyericsson/music/search/LabelItem;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 366
    iget-object p1, p0, Lcom/sonyericsson/music/search/SearchAdapter$LabelVH;->mListener:Lcom/sonyericsson/music/search/SearchAdapter$OnClickListener;

    if-eqz p1, :cond_0

    .line 367
    iget-object v0, p0, Lcom/sonyericsson/music/search/SearchAdapter$LabelVH;->mItem:Lcom/sonyericsson/music/search/LabelItem;

    invoke-virtual {v0}, Lcom/sonyericsson/music/search/LabelItem;->getLabel()Lcom/sonyericsson/music/search/Label;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sonyericsson/music/search/SearchAdapter$OnClickListener;->onLabelItemClicked(Lcom/sonyericsson/music/search/Label;)V

    :cond_0
    return-void
.end method
