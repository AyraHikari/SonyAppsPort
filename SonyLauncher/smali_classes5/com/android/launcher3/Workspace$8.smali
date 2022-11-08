.class Lcom/android/launcher3/Workspace$8;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Workspace;->getFirstMatch(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;

.field final synthetic val$operator:Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;

.field final synthetic val$value:[Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;[Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/Workspace;

    .line 3245
    .local p0, "this":Lcom/android/launcher3/Workspace$8;, "Lcom/android/launcher3/Workspace$8;"
    iput-object p1, p0, Lcom/android/launcher3/Workspace$8;->this$0:Lcom/android/launcher3/Workspace;

    iput-object p2, p0, Lcom/android/launcher3/Workspace$8;->val$operator:Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;

    iput-object p3, p0, Lcom/android/launcher3/Workspace$8;->val$value:[Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "v"    # Landroid/view/View;

    .line 3248
    .local p0, "this":Lcom/android/launcher3/Workspace$8;, "Lcom/android/launcher3/Workspace$8;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace$8;->val$operator:Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;->evaluate(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3249
    iget-object v0, p0, Lcom/android/launcher3/Workspace$8;->val$value:[Landroid/view/View;

    aput-object p2, v0, v1

    .line 3250
    const/4 v0, 0x1

    return v0

    .line 3252
    :cond_0
    return v1
.end method
