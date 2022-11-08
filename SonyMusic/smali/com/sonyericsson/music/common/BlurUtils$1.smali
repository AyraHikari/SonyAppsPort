.class Lcom/sonyericsson/music/common/BlurUtils$1;
.super Ljava/lang/Object;
.source "BlurUtils.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/common/BlurUtils;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$appContext:Landroid/content/Context;

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Landroid/content/Context;J)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/sonyericsson/music/common/BlurUtils$1;->val$appContext:Landroid/content/Context;

    iput-wide p2, p0, Lcom/sonyericsson/music/common/BlurUtils$1;->val$startTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 58
    invoke-virtual {p0}, Lcom/sonyericsson/music/common/BlurUtils$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 61
    const-class v0, Lcom/sonyericsson/music/common/BlurUtils;

    monitor-enter v0

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/music/common/BlurUtils$1;->val$appContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v1

    .line 64
    invoke-static {}, Lcom/sonyericsson/music/common/BlurUtils;->access$100()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/music/common/BlurUtils;->access$002(Landroid/renderscript/Allocation;)Landroid/renderscript/Allocation;

    .line 65
    invoke-static {}, Lcom/sonyericsson/music/common/BlurUtils;->access$000()Landroid/renderscript/Allocation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/music/common/BlurUtils;->access$202(Landroid/renderscript/Allocation;)Landroid/renderscript/Allocation;

    .line 66
    invoke-static {v1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/music/common/BlurUtils;->access$302(Landroid/renderscript/ScriptIntrinsicBlur;)Landroid/renderscript/ScriptIntrinsicBlur;

    .line 67
    invoke-static {}, Lcom/sonyericsson/music/common/BlurUtils;->access$300()Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v1

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v1, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 68
    invoke-static {}, Lcom/sonyericsson/music/common/BlurUtils;->access$300()Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v1

    invoke-static {}, Lcom/sonyericsson/music/common/BlurUtils;->access$000()Landroid/renderscript/Allocation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    const/4 v1, 0x0

    .line 73
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 74
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
