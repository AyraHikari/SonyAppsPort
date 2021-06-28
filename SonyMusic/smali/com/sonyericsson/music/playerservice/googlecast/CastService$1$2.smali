.class Lcom/sonyericsson/music/playerservice/googlecast/CastService$1$2;
.super Ljava/lang/Object;
.source "CastService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/playerservice/googlecast/CastService$1;->onApplicationMetadataChanged(Lcom/google/android/gms/cast/ApplicationMetadata;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/music/playerservice/googlecast/CastService$1;

.field final synthetic val$applicationMetadata:Lcom/google/android/gms/cast/ApplicationMetadata;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/playerservice/googlecast/CastService$1;Lcom/google/android/gms/cast/ApplicationMetadata;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService$1$2;->this$1:Lcom/sonyericsson/music/playerservice/googlecast/CastService$1;

    iput-object p2, p0, Lcom/sonyericsson/music/playerservice/googlecast/CastService$1$2;->val$applicationMetadata:Lcom/google/android/gms/cast/ApplicationMetadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    return-void
.end method
