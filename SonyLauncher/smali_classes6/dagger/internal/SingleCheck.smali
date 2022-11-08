.class public final Ldagger/internal/SingleCheck;
.super Ljava/lang/Object;
.source "SingleCheck.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final UNINITIALIZED:Ljava/lang/Object;


# instance fields
.field private volatile instance:Ljava/lang/Object;

.field private volatile provider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    nop

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ldagger/internal/SingleCheck;->UNINITIALIZED:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "TT;>;)V"
        }
    .end annotation

    .line 33
    .local p0, "this":Ldagger/internal/SingleCheck;, "Ldagger/internal/SingleCheck<TT;>;"
    .local p1, "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Ldagger/internal/SingleCheck;->UNINITIALIZED:Ljava/lang/Object;

    iput-object v0, p0, Ldagger/internal/SingleCheck;->instance:Ljava/lang/Object;

    .line 34
    nop

    .line 35
    iput-object p1, p0, Ldagger/internal/SingleCheck;->provider:Ljavax/inject/Provider;

    .line 36
    return-void
.end method

.method public static provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Ljavax/inject/Provider<",
            "TT;>;T:",
            "Ljava/lang/Object;",
            ">(TP;)",
            "Ljavax/inject/Provider<",
            "TT;>;"
        }
    .end annotation

    .line 65
    .local p0, "provider":Ljavax/inject/Provider;, "TP;"
    instance-of v0, p0, Ldagger/internal/SingleCheck;

    if-nez v0, :cond_1

    instance-of v0, p0, Ldagger/internal/DoubleCheck;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    new-instance v0, Ldagger/internal/SingleCheck;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/inject/Provider;

    invoke-direct {v0, v1}, Ldagger/internal/SingleCheck;-><init>(Ljavax/inject/Provider;)V

    return-object v0

    .line 66
    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 41
    .local p0, "this":Ldagger/internal/SingleCheck;, "Ldagger/internal/SingleCheck<TT;>;"
    iget-object v0, p0, Ldagger/internal/SingleCheck;->instance:Ljava/lang/Object;

    .line 42
    .local v0, "local":Ljava/lang/Object;
    sget-object v1, Ldagger/internal/SingleCheck;->UNINITIALIZED:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 44
    iget-object v1, p0, Ldagger/internal/SingleCheck;->provider:Ljavax/inject/Provider;

    .line 45
    .local v1, "providerReference":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TT;>;"
    if-nez v1, :cond_0

    .line 47
    iget-object v0, p0, Ldagger/internal/SingleCheck;->instance:Ljava/lang/Object;

    goto :goto_0

    .line 49
    :cond_0
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    .line 50
    iput-object v0, p0, Ldagger/internal/SingleCheck;->instance:Ljava/lang/Object;

    .line 54
    const/4 v2, 0x0

    iput-object v2, p0, Ldagger/internal/SingleCheck;->provider:Ljavax/inject/Provider;

    .line 57
    .end local v1    # "providerReference":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TT;>;"
    :cond_1
    :goto_0
    return-object v0
.end method
