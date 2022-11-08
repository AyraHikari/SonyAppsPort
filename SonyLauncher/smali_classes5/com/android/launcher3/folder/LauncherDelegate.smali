.class public Lcom/android/launcher3/folder/LauncherDelegate;
.super Ljava/lang/Object;
.source "LauncherDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/LauncherDelegate$FallbackDelegate;
    }
.end annotation


# instance fields
.field public final mLauncher:Lcom/android/launcher3/Launcher;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 0
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/launcher3/folder/LauncherDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 58
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/folder/LauncherDelegate-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/LauncherDelegate;-><init>(Lcom/android/launcher3/Launcher;)V

    return-void
.end method

.method static from(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/LauncherDelegate;
    .locals 2
    .param p0, "context"    # Lcom/android/launcher3/views/ActivityContext;

    .line 220
    instance-of v0, p0, Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_0

    .line 221
    new-instance v0, Lcom/android/launcher3/folder/LauncherDelegate;

    move-object v1, p0

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/LauncherDelegate;-><init>(Lcom/android/launcher3/Launcher;)V

    goto :goto_0

    .line 222
    :cond_0
    new-instance v0, Lcom/android/launcher3/folder/LauncherDelegate$FallbackDelegate;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/LauncherDelegate$FallbackDelegate;-><init>(Lcom/android/launcher3/views/ActivityContext;)V

    .line 220
    :goto_0
    return-object v0
.end method


# virtual methods
.method beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "source"    # Lcom/android/launcher3/DragSource;
    .param p3, "options"    # Lcom/android/launcher3/dragndrop/DragOptions;

    .line 70
    iget-object v0, p0, Lcom/android/launcher3/folder/LauncherDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/Workspace;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V

    .line 71
    return-void
.end method

.method forEachVisibleWorkspacePage(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 78
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/View;>;"
    iget-object v0, p0, Lcom/android/launcher3/folder/LauncherDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->forEachVisiblePage(Ljava/util/function/Consumer;)V

    .line 79
    return-void
.end method

.method getLauncher()Lcom/android/launcher3/Launcher;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/launcher3/folder/LauncherDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method getModelWriter()Lcom/android/launcher3/model/ModelWriter;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/android/launcher3/folder/LauncherDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    return-object v0
.end method

.method init(Lcom/android/launcher3/folder/Folder;Lcom/android/launcher3/folder/FolderIcon;)V
    .locals 1
    .param p1, "folder"    # Lcom/android/launcher3/folder/Folder;
    .param p2, "icon"    # Lcom/android/launcher3/folder/FolderIcon;

    .line 61
    iget-object v0, p0, Lcom/android/launcher3/folder/LauncherDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/Folder;->setDragController(Lcom/android/launcher3/dragndrop/DragController;)V

    .line 62
    iget-object v0, p0, Lcom/android/launcher3/folder/LauncherDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getFocusHandler()Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/launcher3/folder/FolderIcon;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 63
    return-void
.end method

.method interceptOutsideTouch(Landroid/view/MotionEvent;Lcom/android/launcher3/views/BaseDragLayer;Lcom/android/launcher3/folder/Folder;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "dl"    # Lcom/android/launcher3/views/BaseDragLayer;
    .param p3, "folder"    # Lcom/android/launcher3/folder/Folder;

    .line 154
    iget-object v0, p0, Lcom/android/launcher3/folder/LauncherDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->isInAccessibleDrag()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/android/launcher3/folder/LauncherDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDropTargetBar()Lcom/android/launcher3/DropTargetBar;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    return v1

    .line 164
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 161
    :cond_1
    invoke-virtual {p3, v1}, Lcom/android/launcher3/folder/Folder;->close(Z)V

    .line 162
    return v1
.end method

.method isDraggingEnabled()Z
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/android/launcher3/folder/LauncherDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isDraggingEnabled()Z

    move-result v0

    return v0
.end method

.method replaceFolderWithFinalItem(Lcom/android/launcher3/folder/Folder;)Z
    .locals 3
    .param p1, "folder"    # Lcom/android/launcher3/folder/Folder;

    .line 88
    new-instance v0, Lcom/android/launcher3/folder/LauncherDelegate$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/folder/LauncherDelegate$1;-><init>(Lcom/android/launcher3/folder/LauncherDelegate;Lcom/android/launcher3/folder/Folder;)V

    .line 143
    .local v0, "onCompleteRunnable":Ljava/lang/Runnable;
    iget-object v1, p1, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderPagedView;->getLastItem()Landroid/view/View;

    move-result-object v1

    .line 144
    .local v1, "finalChild":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 145
    iget-object v2, p1, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/folder/FolderIcon;->performDestroyAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 147
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 149
    :goto_0
    const/4 v2, 0x1

    return v2
.end method
