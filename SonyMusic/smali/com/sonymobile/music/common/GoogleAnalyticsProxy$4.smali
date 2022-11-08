.class Lcom/sonymobile/music/common/GoogleAnalyticsProxy$4;
.super Ljava/lang/Object;
.source "GoogleAnalyticsProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/music/common/GoogleAnalyticsProxy;->setCustomDimension(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/sonymobile/music/common/GoogleAnalyticsProxy$4;->val$tag:Ljava/lang/String;

    iput-object p2, p0, Lcom/sonymobile/music/common/GoogleAnalyticsProxy$4;->val$value:Ljava/lang/String;

    iput-object p3, p0, Lcom/sonymobile/music/common/GoogleAnalyticsProxy$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 64
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "custom-dimension-tag"

    .line 65
    iget-object v2, p0, Lcom/sonymobile/music/common/GoogleAnalyticsProxy$4;->val$tag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "custom-dimension-value"

    .line 66
    iget-object v2, p0, Lcom/sonymobile/music/common/GoogleAnalyticsProxy$4;->val$value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/sonymobile/music/common/GoogleAnalyticsProxy$4;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->URI:Landroid/net/Uri;

    const-string v3, "set-custom-dimension"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method
