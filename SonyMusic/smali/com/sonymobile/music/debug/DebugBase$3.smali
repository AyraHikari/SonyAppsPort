.class Lcom/sonymobile/music/debug/DebugBase$3;
.super Ljava/lang/Object;
.source "DebugBase.java"

# interfaces
.implements Lcom/sonymobile/music/debug/DebugBase$Logger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/music/debug/DebugBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/music/debug/DebugBase;


# direct methods
.method constructor <init>(Lcom/sonymobile/music/debug/DebugBase;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/sonymobile/music/debug/DebugBase$3;->this$0:Lcom/sonymobile/music/debug/DebugBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public line(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/sonymobile/music/debug/DebugBase$3;->this$0:Lcom/sonymobile/music/debug/DebugBase;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/music/debug/DebugBase;->logE(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method
