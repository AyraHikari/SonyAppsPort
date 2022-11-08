.class Landroidx/slice/compat/SliceProviderCompat$1;
.super Ljava/lang/Object;
.source "SliceProviderCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/compat/SliceProviderCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/slice/compat/SliceProviderCompat;


# direct methods
.method constructor <init>(Landroidx/slice/compat/SliceProviderCompat;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/slice/compat/SliceProviderCompat;

    .line 313
    iput-object p1, p0, Landroidx/slice/compat/SliceProviderCompat$1;->this$0:Landroidx/slice/compat/SliceProviderCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 316
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Process;->sendSignal(II)V

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timed out while handling slice callback "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/slice/compat/SliceProviderCompat$1;->this$0:Landroidx/slice/compat/SliceProviderCompat;

    iget-object v1, v1, Landroidx/slice/compat/SliceProviderCompat;->mCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SliceProviderCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    return-void
.end method
