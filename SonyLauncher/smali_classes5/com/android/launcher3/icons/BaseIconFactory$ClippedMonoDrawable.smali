.class Lcom/android/launcher3/icons/BaseIconFactory$ClippedMonoDrawable;
.super Landroid/graphics/drawable/InsetDrawable;
.source "BaseIconFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/icons/BaseIconFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClippedMonoDrawable"
.end annotation


# instance fields
.field private final mCrop:Landroid/graphics/drawable/AdaptiveIconDrawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "base"    # Landroid/graphics/drawable/Drawable;

    .line 525
    invoke-static {}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getExtraInsetFraction()F

    move-result v0

    neg-float v0, v0

    invoke-direct {p0, p1, v0}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;F)V

    .line 526
    new-instance v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x1000000

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory$ClippedMonoDrawable;->mCrop:Landroid/graphics/drawable/AdaptiveIconDrawable;

    .line 527
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 531
    iget-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory$ClippedMonoDrawable;->mCrop:Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {p0}, Lcom/android/launcher3/icons/BaseIconFactory$ClippedMonoDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 532
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 533
    .local v0, "saveCount":I
    iget-object v1, p0, Lcom/android/launcher3/icons/BaseIconFactory$ClippedMonoDrawable;->mCrop:Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 534
    invoke-super {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 535
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 536
    return-void
.end method
