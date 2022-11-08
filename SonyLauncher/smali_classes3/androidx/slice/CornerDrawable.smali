.class public Landroidx/slice/CornerDrawable;
.super Landroid/graphics/drawable/InsetDrawable;
.source "CornerDrawable.java"


# instance fields
.field private mCornerRadius:F

.field private final mPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;F)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "cornerRadius"    # F

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 38
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroidx/slice/CornerDrawable;->mPath:Landroid/graphics/Path;

    .line 42
    iput p2, p0, Landroidx/slice/CornerDrawable;->mCornerRadius:F

    .line 43
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 47
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 48
    .local v0, "saveCount":I
    iget-object v1, p0, Landroidx/slice/CornerDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 49
    invoke-super {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 50
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 51
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 55
    iget-object v0, p0, Landroidx/slice/CornerDrawable;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 57
    iget-object v0, p0, Landroidx/slice/CornerDrawable;->mPath:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget v2, p0, Landroidx/slice/CornerDrawable;->mCornerRadius:F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 59
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 60
    return-void
.end method
