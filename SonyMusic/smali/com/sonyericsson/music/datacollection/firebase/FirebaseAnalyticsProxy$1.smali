.class final Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy$1;
.super Ljava/lang/Object;
.source "FirebaseAnalyticsProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appContext:Landroid/content/Context;

.field final synthetic val$event:Ljava/lang/String;

.field final synthetic val$paramName:Ljava/lang/String;

.field final synthetic val$uri:Landroid/net/Uri;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy$1;->val$paramName:Ljava/lang/String;

    iput-object p2, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy$1;->val$value:Ljava/lang/String;

    iput-object p3, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy$1;->val$appContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy$1;->val$uri:Landroid/net/Uri;

    iput-object p5, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy$1;->val$event:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 59
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 60
    iget-object v1, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy$1;->val$paramName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy$1;->val$value:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 61
    iget-object v1, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy$1;->val$value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_0

    .line 62
    iget-object v1, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy$1;->val$paramName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy$1;->val$value:Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v4, 0x63

    .line 63
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy$1;->val$paramName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy$1;->val$value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 71
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy$1;->val$appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy$1;->val$uri:Landroid/net/Uri;

    const-string v3, "log-event"

    iget-object v4, p0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy$1;->val$event:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
