.class public final Ldagger/internal/DelegateFactory;
.super Ljava/lang/Object;
.source "DelegateFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private delegate:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    .local p0, "this":Ldagger/internal/DelegateFactory;, "Ldagger/internal/DelegateFactory<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setDelegate(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/inject/Provider<",
            "TT;>;",
            "Ljavax/inject/Provider<",
            "TT;>;)V"
        }
    .end annotation

    .line 53
    .local p0, "delegateFactory":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TT;>;"
    .local p1, "delegate":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TT;>;"
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    move-object v0, p0

    check-cast v0, Ldagger/internal/DelegateFactory;

    .line 55
    .local v0, "asDelegateFactory":Ldagger/internal/DelegateFactory;, "Ldagger/internal/DelegateFactory<TT;>;"
    iget-object v1, v0, Ldagger/internal/DelegateFactory;->delegate:Ljavax/inject/Provider;

    if-nez v1, :cond_0

    .line 58
    iput-object p1, v0, Ldagger/internal/DelegateFactory;->delegate:Ljavax/inject/Provider;

    .line 59
    return-void

    .line 56
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 33
    .local p0, "this":Ldagger/internal/DelegateFactory;, "Ldagger/internal/DelegateFactory<TT;>;"
    iget-object v0, p0, Ldagger/internal/DelegateFactory;->delegate:Ljavax/inject/Provider;

    if-eqz v0, :cond_0

    .line 36
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method getDelegate()Ljavax/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/inject/Provider<",
            "TT;>;"
        }
    .end annotation

    .line 67
    .local p0, "this":Ldagger/internal/DelegateFactory;, "Ldagger/internal/DelegateFactory<TT;>;"
    iget-object v0, p0, Ldagger/internal/DelegateFactory;->delegate:Ljavax/inject/Provider;

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/inject/Provider;

    return-object v0
.end method

.method public setDelegatedProvider(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 43
    .local p0, "this":Ldagger/internal/DelegateFactory;, "Ldagger/internal/DelegateFactory<TT;>;"
    .local p1, "delegate":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TT;>;"
    invoke-static {p0, p1}, Ldagger/internal/DelegateFactory;->setDelegate(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    .line 44
    return-void
.end method
