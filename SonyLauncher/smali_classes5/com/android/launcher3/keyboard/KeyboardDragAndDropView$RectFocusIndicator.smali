.class Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$RectFocusIndicator;
.super Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;
.source "KeyboardDragAndDropView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RectFocusIndicator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper<",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 3
    .param p1, "container"    # Landroid/view/View;

    .line 331
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/util/Themes;->getColorAccent(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;-><init>(Landroid/view/View;I)V

    .line 332
    iget-object v0, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$RectFocusIndicator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$dimen;->keyboard_drag_stroke_width:I

    .line 333
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 332
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 334
    iget-object v0, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$RectFocusIndicator;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 335
    return-void
.end method


# virtual methods
.method public viewToRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "item"    # Landroid/graphics/Rect;
    .param p2, "outRect"    # Landroid/graphics/Rect;

    .line 339
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 340
    return-void
.end method

.method public bridge synthetic viewToRect(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    .line 328
    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$RectFocusIndicator;->viewToRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method
