.class Lcom/android/launcher3/folder/LauncherDelegate$FallbackDelegate;
.super Lcom/android/launcher3/folder/LauncherDelegate;
.source "LauncherDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/folder/LauncherDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FallbackDelegate"
.end annotation


# instance fields
.field private final mContext:Lcom/android/launcher3/views/ActivityContext;

.field private mWriter:Lcom/android/launcher3/model/ModelWriter;


# direct methods
.method constructor <init>(Lcom/android/launcher3/views/ActivityContext;)V
    .locals 1
    .param p1, "context"    # Lcom/android/launcher3/views/ActivityContext;

    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/launcher3/folder/LauncherDelegate;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/folder/LauncherDelegate-IA;)V

    .line 174
    iput-object p1, p0, Lcom/android/launcher3/folder/LauncherDelegate$FallbackDelegate;->mContext:Lcom/android/launcher3/views/ActivityContext;

    .line 175
    return-void
.end method


# virtual methods
.method beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "source"    # Lcom/android/launcher3/DragSource;
    .param p3, "options"    # Lcom/android/launcher3/dragndrop/DragOptions;

    .line 188
    return-void
.end method

.method forEachVisibleWorkspacePage(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 200
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/View;>;"
    return-void
.end method

.method getLauncher()Lcom/android/launcher3/Launcher;
    .locals 1

    .line 204
    const/4 v0, 0x0

    return-object v0
.end method

.method getModelWriter()Lcom/android/launcher3/model/ModelWriter;
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/android/launcher3/folder/LauncherDelegate$FallbackDelegate;->mWriter:Lcom/android/launcher3/model/ModelWriter;

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/launcher3/folder/LauncherDelegate$FallbackDelegate;->mContext:Lcom/android/launcher3/views/ActivityContext;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    const/4 v1, 0x0

    .line 194
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/android/launcher3/LauncherModel;->getWriter(ZZLcom/android/launcher3/model/BgDataModel$Callbacks;)Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/LauncherDelegate$FallbackDelegate;->mWriter:Lcom/android/launcher3/model/ModelWriter;

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/LauncherDelegate$FallbackDelegate;->mWriter:Lcom/android/launcher3/model/ModelWriter;

    return-object v0
.end method

.method init(Lcom/android/launcher3/folder/Folder;Lcom/android/launcher3/folder/FolderIcon;)V
    .locals 1
    .param p1, "folder"    # Lcom/android/launcher3/folder/Folder;
    .param p2, "icon"    # Lcom/android/launcher3/folder/FolderIcon;

    .line 179
    iget-object v0, p0, Lcom/android/launcher3/folder/LauncherDelegate$FallbackDelegate;->mContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/Folder;->setDragController(Lcom/android/launcher3/dragndrop/DragController;)V

    .line 180
    return-void
.end method

.method interceptOutsideTouch(Landroid/view/MotionEvent;Lcom/android/launcher3/views/BaseDragLayer;Lcom/android/launcher3/folder/Folder;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "dl"    # Lcom/android/launcher3/views/BaseDragLayer;
    .param p3, "folder"    # Lcom/android/launcher3/folder/Folder;

    .line 214
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/android/launcher3/folder/Folder;->close(Z)V

    .line 215
    return v0
.end method

.method isDraggingEnabled()Z
    .locals 1

    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method replaceFolderWithFinalItem(Lcom/android/launcher3/folder/Folder;)Z
    .locals 1
    .param p1, "folder"    # Lcom/android/launcher3/folder/Folder;

    .line 209
    const/4 v0, 0x0

    return v0
.end method
