.class public final Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider_Factory_Impl;
.super Ljava/lang/Object;
.source "ScaleAwareTransitionProgressProvider_Factory_Impl.java"

# interfaces
.implements Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider$Factory;


# instance fields
.field private final delegateFactory:Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider_Factory;


# direct methods
.method constructor <init>(Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider_Factory;)V
    .locals 0
    .param p1, "delegateFactory"    # Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider_Factory;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider_Factory_Impl;->delegateFactory:Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider_Factory;

    .line 20
    return-void
.end method

.method public static create(Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider_Factory;)Ljavax/inject/Provider;
    .locals 1
    .param p0, "delegateFactory"    # Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider_Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider_Factory;",
            ")",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider$Factory;",
            ">;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider_Factory_Impl;

    invoke-direct {v0, p0}, Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider_Factory_Impl;-><init>(Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider_Factory;)V

    invoke-static {v0}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public wrap(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;)Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider;
    .locals 1
    .param p1, "progressProvider"    # Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;

    .line 25
    iget-object v0, p0, Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider_Factory_Impl;->delegateFactory:Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider_Factory;

    invoke-virtual {v0, p1}, Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider_Factory;->get(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;)Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider;

    move-result-object v0

    return-object v0
.end method
