.class public interface abstract Lcom/android/launcher3/dragndrop/DraggableView;
.super Ljava/lang/Object;
.source "DraggableView.java"


# static fields
.field public static final DRAGGABLE_ICON:I = 0x0

.field public static final DRAGGABLE_WIDGET:I = 0x1


# direct methods
.method public static synthetic lambda$ofType$0(I)I
    .locals 0
    .param p0, "type"    # I

    .line 37
    return p0
.end method

.method public static synthetic lambda$prepareDrawDragView$1()V
    .locals 0

    .line 53
    return-void
.end method

.method public static ofType(I)Lcom/android/launcher3/dragndrop/DraggableView;
    .locals 1
    .param p0, "type"    # I

    .line 37
    new-instance v0, Lcom/android/launcher3/dragndrop/DraggableView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/dragndrop/DraggableView$$ExternalSyntheticLambda0;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public getSourceVisualDragBounds(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 71
    invoke-interface {p0, p1}, Lcom/android/launcher3/dragndrop/DraggableView;->getWorkspaceVisualDragBounds(Landroid/graphics/Rect;)V

    .line 72
    return-void
.end method

.method public abstract getViewType()I
.end method

.method public getWorkspaceVisualDragBounds(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 63
    return-void
.end method

.method public prepareDrawDragView()Lcom/android/launcher3/util/SafeCloseable;
    .locals 1

    .line 53
    new-instance v0, Lcom/android/launcher3/dragndrop/DraggableView$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/launcher3/dragndrop/DraggableView$$ExternalSyntheticLambda1;-><init>()V

    return-object v0
.end method
