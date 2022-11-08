.class public Lcom/android/launcher3/dragndrop/DragOptions;
.super Ljava/lang/Object;
.source "DragOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;
    }
.end annotation


# instance fields
.field public intrinsicIconScaleFactor:F

.field public isAccessibleDrag:Z

.field public isFlingToDelete:Z

.field public isKeyboardDrag:Z

.field public preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

.field public simulatedDndStartPoint:Landroid/graphics/Point;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    .line 32
    iput-boolean v0, p0, Lcom/android/launcher3/dragndrop/DragOptions;->isKeyboardDrag:Z

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragOptions;->simulatedDndStartPoint:Landroid/graphics/Point;

    .line 41
    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    .line 44
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/dragndrop/DragOptions;->intrinsicIconScaleFactor:F

    return-void
.end method
