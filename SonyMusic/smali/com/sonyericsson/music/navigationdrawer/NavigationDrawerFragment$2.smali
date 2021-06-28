.class Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$2;
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

    .line 203
    iput-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$2;->this$0:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private reportMoraClicks(Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;)V
    .locals 5

    .line 218
    invoke-virtual {p1}, Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;->getMenuItemTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mora_new_releases"

    .line 221
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v1, "new_releases"

    const-string p1, "mora_new_releases"

    goto :goto_0

    :cond_0
    const-string v0, "mora_charts"

    .line 224
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string v1, "charts"

    const-string p1, "mora_charts"

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-eqz v1, :cond_2

    .line 230
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$2;->this$0:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->access$300(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;)Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy;->logEvent(Landroid/content/Context;Ljava/lang/String;)Z

    .line 232
    iget-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$2;->this$0:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    invoke-static {p1}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->access$400(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;)Lcom/sonyericsson/music/MusicActivity;

    move-result-object p1

    const-string v0, "mora"

    const-string v2, "open"

    const-wide/16 v3, 0x0

    .line 234
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 232
    invoke-static {p1, v0, v2, v1, v3}, Lcom/sonymobile/music/common/GoogleAnalyticsProxy;->sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$2;->this$0:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    invoke-static {v0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->access$000(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;)Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerAdapter;->getItem(I)Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$2;->reportMoraClicks(Lcom/sonyericsson/music/navigationdrawer/NavigationMenuItem;)V

    .line 211
    iget-object v0, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$2;->this$0:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    invoke-static {v0, p1}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->access$102(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;I)I

    .line 212
    iget-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$2;->this$0:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->access$202(Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;Z)Z

    .line 213
    iget-object p1, p0, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment$2;->this$0:Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;

    invoke-virtual {p1}, Lcom/sonyericsson/music/navigationdrawer/NavigationDrawerFragment;->closeDrawer()V

    :cond_0
    return-void
.end method
