.class Lcom/sonymobile/music/common/GoogleAnalyticsProxy$2;
.super Ljava/lang/Object;
.source "GoogleAnalyticsProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/music/common/GoogleAnalyticsProxy;->sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$category:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$label:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/Long;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Landroid/content/Context;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/sonymobile/music/common/GoogleAnalyticsProxy$2;->val$category:Ljava/lang/String;

    iput-object p2, p0, Lcom/sonymobile/music/common/GoogleAnalyticsProxy$2;->val$action:Ljava/lang/String;

    iput-object p3, p0, Lcom/sonymobile/music/common/GoogleAnalyticsProxy$2;->val$label:Ljava/lang/String;

    iput-object p4, p0, Lcom/sonymobile/music/common/GoogleAnalyticsProxy$2;->val$value:Ljava/lang/Long;

    iput-object p5, p0, Lcom/sonymobile/music/common/GoogleAnalyticsProxy$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 36
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "event-category"

    .line 37
    iget-object v2, p0, Lcom/sonymobile/music/common/GoogleAnalyticsProxy$2;->val$category:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "event-action"

    .line 38
    iget-object v2, p0, Lcom/sonymobile/music/common/GoogleAnalyticsProxy$2;->val$action:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "event-label"

    .line 39
    iget-object v2, p0, Lcom/sonymobile/music/common/GoogleAnalyticsProxy$2;->val$label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "event-value"

    .line 40
    iget-object v2, p0, Lcom/sonymobile/music/common/GoogleAnalyticsProxy$2;->val$value:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 41
    iget-object v1, p0, Lcom/sonymobile/music/common/GoogleAnalyticsProxy$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->URI:Landroid/net/Uri;

    const-string v3, "send-event"

    const/4 v4, 0x0

    .line 42
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method
