.class public final Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener_Factory;
.super Ljava/lang/Object;
.source "ATraceLoggerTransitionProgressListener_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final tracePrefixProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 16
    .local p1, "tracePrefixProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener_Factory;->tracePrefixProvider:Ljavax/inject/Provider;

    .line 18
    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener_Factory;"
        }
    .end annotation

    .line 27
    .local p0, "tracePrefixProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener_Factory;

    invoke-direct {v0, p0}, Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;
    .locals 1
    .param p0, "tracePrefix"    # Ljava/lang/String;

    .line 31
    new-instance v0, Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;

    invoke-direct {v0, p0}, Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener_Factory;->tracePrefixProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener_Factory;->newInstance(Ljava/lang/String;)Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener_Factory;->get()Lcom/android/systemui/unfold/util/ATraceLoggerTransitionProgressListener;

    move-result-object v0

    return-object v0
.end method
