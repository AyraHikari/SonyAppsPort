.class Lcom/sonymobile/music/common/GoogleAnalyticsProvider$1;
.super Ljava/lang/Thread;
.source "GoogleAnalyticsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/music/common/GoogleAnalyticsProvider;


# direct methods
.method constructor <init>(Lcom/sonymobile/music/common/GoogleAnalyticsProvider;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/sonymobile/music/common/GoogleAnalyticsProvider$1;->this$0:Lcom/sonymobile/music/common/GoogleAnalyticsProvider;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/sonymobile/music/common/GoogleAnalyticsProvider$1;->this$0:Lcom/sonymobile/music/common/GoogleAnalyticsProvider;

    invoke-virtual {v0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/music/common/GoogleAnalyticsProvider;->access$000(Landroid/content/Context;)V

    return-void
.end method
