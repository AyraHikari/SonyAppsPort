.class Lcom/android/launcher3/Workspace$7;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Workspace;->removeFolderListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/Workspace;

    .line 3133
    .local p0, "this":Lcom/android/launcher3/Workspace$7;, "Lcom/android/launcher3/Workspace$7;"
    iput-object p1, p0, Lcom/android/launcher3/Workspace$7;->this$0:Lcom/android/launcher3/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "view"    # Landroid/view/View;

    .line 3136
    .local p0, "this":Lcom/android/launcher3/Workspace$7;, "Lcom/android/launcher3/Workspace$7;"
    instance-of v0, p2, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_0

    .line 3137
    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->removeListeners()V

    .line 3139
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
