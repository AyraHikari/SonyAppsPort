.class Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionFailedListener;
.super Ljava/lang/Object;
.source "GoogleCastConnection.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GoogleCastConnectionFailedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionFailedListener;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$1;)V
    .locals 0

    .line 345
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionFailedListener;-><init>(Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;)V

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    .line 348
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionFailedListener;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->access$200(Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;Z)V

    .line 349
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionFailedListener;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;

    invoke-static {p1}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->access$1200(Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;)V

    .line 350
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionFailedListener;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;

    invoke-virtual {p1}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->teardown()V

    .line 354
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection$GoogleCastConnectionFailedListener;->this$0:Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;

    invoke-static {p1}, Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;->access$400(Lcom/sonyericsson/music/playerservice/googlecast/GoogleCastConnection;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
