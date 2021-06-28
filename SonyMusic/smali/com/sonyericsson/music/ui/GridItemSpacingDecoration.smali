.class public Lcom/sonyericsson/music/ui/GridItemSpacingDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "GridItemSpacingDecoration.java"


# static fields
.field private static final INFINITE:I


# instance fields
.field private final mColumns:I

.field private final mHeaderCount:I

.field private final mRtl:Z

.field private final mSpacing:I


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 34
    iput p1, p0, Lcom/sonyericsson/music/ui/GridItemSpacingDecoration;->mHeaderCount:I

    .line 35
    iput p2, p0, Lcom/sonyericsson/music/ui/GridItemSpacingDecoration;->mColumns:I

    .line 36
    iput p3, p0, Lcom/sonyericsson/music/ui/GridItemSpacingDecoration;->mSpacing:I

    .line 37
    iput-boolean p4, p0, Lcom/sonyericsson/music/ui/GridItemSpacingDecoration;->mRtl:Z

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/sonyericsson/music/ui/GridItemSpacingDecoration;-><init>(IIIZ)V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 44
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 46
    iget p3, p0, Lcom/sonyericsson/music/ui/GridItemSpacingDecoration;->mHeaderCount:I

    if-lt p2, p3, :cond_4

    const/4 p4, 0x0

    sub-int/2addr p2, p3

    .line 52
    iget p3, p0, Lcom/sonyericsson/music/ui/GridItemSpacingDecoration;->mColumns:I

    if-nez p3, :cond_0

    .line 53
    iget p2, p0, Lcom/sonyericsson/music/ui/GridItemSpacingDecoration;->mSpacing:I

    const/4 p3, 0x0

    goto :goto_0

    .line 55
    :cond_0
    rem-int p4, p2, p3

    if-lt p2, p3, :cond_1

    .line 58
    iget p2, p0, Lcom/sonyericsson/music/ui/GridItemSpacingDecoration;->mSpacing:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 60
    :cond_1
    iget p2, p0, Lcom/sonyericsson/music/ui/GridItemSpacingDecoration;->mSpacing:I

    mul-int p3, p4, p2

    iget v0, p0, Lcom/sonyericsson/music/ui/GridItemSpacingDecoration;->mColumns:I

    div-int/2addr p3, v0

    add-int/lit8 p4, p4, 0x1

    mul-int p4, p4, p2

    .line 61
    div-int/2addr p4, v0

    sub-int/2addr p2, p4

    .line 64
    :goto_0
    iget-boolean p4, p0, Lcom/sonyericsson/music/ui/GridItemSpacingDecoration;->mRtl:Z

    if-eqz p4, :cond_2

    move p4, p2

    goto :goto_1

    :cond_2
    move p4, p3

    :goto_1
    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 65
    iget-boolean p4, p0, Lcom/sonyericsson/music/ui/GridItemSpacingDecoration;->mRtl:Z

    if-eqz p4, :cond_3

    move p2, p3

    :cond_3
    iput p2, p1, Landroid/graphics/Rect;->right:I

    :cond_4
    return-void
.end method
