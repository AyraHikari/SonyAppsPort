.class Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider$1;
.super Ljava/lang/Object;
.source "DlnaMediaRouteProvider.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;


# direct methods
.method constructor <init>(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider$1;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 61
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider$1;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->access$000(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;)Lcom/sonymobile/somcmediarouter/provider/dlna/PreferenceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/PreferenceHelper;->getKeyValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider$1;->this$0:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;

    invoke-static {p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->access$100(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;)Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->access$200(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaMediaRouteProvider;->publishRoutes(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
