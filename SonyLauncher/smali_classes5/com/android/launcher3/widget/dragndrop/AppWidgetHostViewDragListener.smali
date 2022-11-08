.class public final Lcom/android/launcher3/widget/dragndrop/AppWidgetHostViewDragListener;
.super Ljava/lang/Object;
.source "AppWidgetHostViewDragListener.java"

# interfaces
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;


# instance fields
.field private mAppWidgetHostView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

.field private final mLauncher:Lcom/android/launcher3/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 0
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/launcher3/widget/dragndrop/AppWidgetHostViewDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 31
    return-void
.end method


# virtual methods
.method public onDragEnd()V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/android/launcher3/widget/dragndrop/AppWidgetHostViewDragListener;->mAppWidgetHostView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->endDrag()V

    .line 46
    iget-object v0, p0, Lcom/android/launcher3/widget/dragndrop/AppWidgetHostViewDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->removeDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 47
    return-void
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 1
    .param p1, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p2, "unused"    # Lcom/android/launcher3/dragndrop/DragOptions;

    .line 35
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragView;->getContentView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragView;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iput-object v0, p0, Lcom/android/launcher3/widget/dragndrop/AppWidgetHostViewDragListener;->mAppWidgetHostView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    .line 37
    invoke-virtual {v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->startDrag()V

    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/dragndrop/AppWidgetHostViewDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->removeDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 41
    :goto_0
    return-void
.end method
