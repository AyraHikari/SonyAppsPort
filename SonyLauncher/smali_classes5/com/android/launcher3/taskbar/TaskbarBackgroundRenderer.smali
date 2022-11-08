.class public final Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;
.super Ljava/lang/Object;
.source "TaskbarBackgroundRenderer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;",
        "",
        "context",
        "Lcom/android/launcher3/taskbar/TaskbarActivityContext;",
        "(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V",
        "backgroundHeight",
        "",
        "getBackgroundHeight",
        "()F",
        "setBackgroundHeight",
        "(F)V",
        "invertedLeftCornerPath",
        "Landroid/graphics/Path;",
        "invertedRightCornerPath",
        "leftCornerRadius",
        "paint",
        "Landroid/graphics/Paint;",
        "getPaint",
        "()Landroid/graphics/Paint;",
        "rightCornerRadius",
        "draw",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "packages__apps__Launcher3__android_common__Launcher3QuickStepLib"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private backgroundHeight:F

.field private final invertedLeftCornerPath:Landroid/graphics/Path;

.field private final invertedRightCornerPath:Landroid/graphics/Path;

.field private final leftCornerRadius:F

.field private final paint:Landroid/graphics/Paint;

.field private final rightCornerRadius:F


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;)V
    .locals 12
    .param p1, "context"    # Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->paint:Landroid/graphics/Paint;

    .line 30
    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->taskbarSize:I

    int-to-float v1, v1

    iput v1, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->backgroundHeight:F

    .line 32
    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getLeftCornerRadius()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->leftCornerRadius:F

    .line 33
    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getRightCornerRadius()I

    move-result v2

    int-to-float v9, v2

    iput v9, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->rightCornerRadius:F

    .line 34
    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iput-object v8, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->invertedLeftCornerPath:Landroid/graphics/Path;

    .line 35
    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    iput-object v10, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->invertedRightCornerPath:Landroid/graphics/Path;

    .line 37
    nop

    .line 38
    sget v2, Lcom/android/launcher3/R$color;->taskbar_background:I

    invoke-virtual {p1, v2}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFlags(I)V

    .line 40
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 45
    .local v0, "square":Landroid/graphics/Path;
    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, v0

    move v5, v1

    move v6, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 46
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 47
    .local v2, "circle":Landroid/graphics/Path;
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 v11, 0x0

    invoke-virtual {v2, v1, v11, v1, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 48
    sget-object v1, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v8, v0, v2, v1}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 49
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 50
    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 v5, 0x0

    move-object v3, v0

    move v6, v9

    move v7, v9

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 51
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 52
    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v11, v11, v9, v1}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 53
    sget-object v1, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v10, v0, v2, v1}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 54
    .end local v0    # "square":Landroid/graphics/Path;
    .end local v2    # "circle":Landroid/graphics/Path;
    nop

    .line 27
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 61
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->backgroundHeight:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 64
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v5, v0

    iget v6, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->backgroundHeight:F

    iget-object v7, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 67
    iget v0, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->leftCornerRadius:F

    neg-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 68
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->invertedLeftCornerPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 69
    iget v0, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->leftCornerRadius:F

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 70
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->rightCornerRadius:F

    sub-float/2addr v0, v1

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 71
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->invertedRightCornerPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 73
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 74
    return-void
.end method

.method public final getBackgroundHeight()F
    .locals 1

    .line 30
    iget v0, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->backgroundHeight:F

    return v0
.end method

.method public final getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final setBackgroundHeight(F)V
    .locals 0
    .param p1, "<set-?>"    # F

    .line 30
    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarBackgroundRenderer;->backgroundHeight:F

    return-void
.end method
