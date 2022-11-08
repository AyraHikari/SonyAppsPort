.class public Lcom/android/launcher3/util/SimpleBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SimpleBroadcastReceiver.java"


# instance fields
.field private final mIntentConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .line 29
    .local p1, "intentConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/content/Intent;>;"
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/launcher3/util/SimpleBroadcastReceiver;->mIntentConsumer:Ljava/util/function/Consumer;

    .line 31
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 35
    iget-object v0, p0, Lcom/android/launcher3/util/SimpleBroadcastReceiver;->mIntentConsumer:Ljava/util/function/Consumer;

    invoke-interface {v0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method public varargs register(Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "flags"    # I
    .param p3, "actions"    # [Ljava/lang/String;

    .line 49
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 50
    .local v0, "filter":Landroid/content/IntentFilter;
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p3, v2

    .line 51
    .local v3, "action":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 50
    .end local v3    # "action":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p1, p0, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 54
    return-void
.end method

.method public varargs register(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "actions"    # [Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;->register(Landroid/content/Context;I[Ljava/lang/String;)V

    .line 43
    return-void
.end method
