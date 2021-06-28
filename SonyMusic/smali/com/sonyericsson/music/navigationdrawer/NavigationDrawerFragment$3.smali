.class Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$3;
.super Ljava/lang/Object;
.source "NavigationDrawerFragment.java"

# interfaces
.implements Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter$NavigationMenuItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$3;->this$0:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$3;->this$0:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->access$500(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;)Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;->getItem(I)Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 244
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$3;->this$0:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->access$600(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;)Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;->menuItemAction(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$NavigationDrawerDelegate;)Z

    .line 245
    iget-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$3;->this$0:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    invoke-virtual {p1}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->closeDrawer()V

    :cond_0
    return-void
.end method
