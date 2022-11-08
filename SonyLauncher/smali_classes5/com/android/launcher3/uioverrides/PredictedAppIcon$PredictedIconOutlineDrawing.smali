.class public Lcom/android/launcher3/uioverrides/PredictedAppIcon$PredictedIconOutlineDrawing;
.super Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;
.source "PredictedAppIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/uioverrides/PredictedAppIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PredictedIconOutlineDrawing"
.end annotation


# instance fields
.field private final mIcon:Lcom/android/launcher3/uioverrides/PredictedAppIcon;

.field private final mOutlinePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(IILcom/android/launcher3/uioverrides/PredictedAppIcon;)V
    .locals 3
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "icon"    # Lcom/android/launcher3/uioverrides/PredictedAppIcon;

    .line 402
    invoke-direct {p0}, Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;-><init>()V

    .line 400
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon$PredictedIconOutlineDrawing;->mOutlinePaint:Landroid/graphics/Paint;

    .line 403
    iput p1, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon$PredictedIconOutlineDrawing;->mDelegateCellX:I

    .line 404
    iput p2, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon$PredictedIconOutlineDrawing;->mDelegateCellY:I

    .line 405
    iput-object p3, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon$PredictedIconOutlineDrawing;->mIcon:Lcom/android/launcher3/uioverrides/PredictedAppIcon;

    .line 406
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 407
    const/16 v1, 0x18

    const/16 v2, 0xf5

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 408
    return-void
.end method


# virtual methods
.method public drawOverItem(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 427
    return-void
.end method

.method public drawUnderItem(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 415
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 416
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon$PredictedIconOutlineDrawing;->mIcon:Lcom/android/launcher3/uioverrides/PredictedAppIcon;

    invoke-static {v0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->-$$Nest$mgetOutlineOffsetX(Lcom/android/launcher3/uioverrides/PredictedAppIcon;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon$PredictedIconOutlineDrawing;->mIcon:Lcom/android/launcher3/uioverrides/PredictedAppIcon;

    invoke-static {v1}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->-$$Nest$mgetOutlineOffsetY(Lcom/android/launcher3/uioverrides/PredictedAppIcon;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 417
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon$PredictedIconOutlineDrawing;->mIcon:Lcom/android/launcher3/uioverrides/PredictedAppIcon;

    invoke-static {v0}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->-$$Nest$fgetmShapePath(Lcom/android/launcher3/uioverrides/PredictedAppIcon;)Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon$PredictedIconOutlineDrawing;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 418
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 419
    return-void
.end method
