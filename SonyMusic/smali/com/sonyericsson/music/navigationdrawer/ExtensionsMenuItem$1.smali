.class Lcom/sonyericsson/music/navigationdrawer/ExtensionsMenuItem$1;
.super Ljava/lang/Object;
.source "ExtensionsMenuItem.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/navigationdrawer/ExtensionsMenuItem;->onContextMenuClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/navigationdrawer/ExtensionsMenuItem;

.field final synthetic val$activityContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/navigationdrawer/ExtensionsMenuItem;Landroid/content/Context;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/ExtensionsMenuItem$1;->this$0:Lcom/sonyericsson/music/navigationdrawer/ExtensionsMenuItem;

    iput-object p2, p0, Lcom/sonyericsson/music/navigationdrawer/ExtensionsMenuItem$1;->val$activityContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    .line 148
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x0

    const v1, 0x7f0900b8

    if-ne p1, v1, :cond_0

    .line 149
    new-instance p1, Lcom/sonyericsson/music/extension/ExtensionManager$EnableExtensionTask;

    iget-object v1, p0, Lcom/sonyericsson/music/navigationdrawer/ExtensionsMenuItem$1;->val$activityContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/music/navigationdrawer/ExtensionsMenuItem$1;->this$0:Lcom/sonyericsson/music/navigationdrawer/ExtensionsMenuItem;

    iget-object v2, v2, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuListItem;->mComponentName:Landroid/content/ComponentName;

    .line 150
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p1, v1, v2, v0, v3}, Lcom/sonyericsson/music/extension/ExtensionManager$EnableExtensionTask;-><init>(Landroid/content/Context;Ljava/lang/String;ZZ)V

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v3

    :cond_0
    return v0
.end method
