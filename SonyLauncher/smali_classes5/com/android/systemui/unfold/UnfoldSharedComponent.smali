.class public interface abstract Lcom/android/systemui/unfold/UnfoldSharedComponent;
.super Ljava/lang/Object;
.source "UnfoldSharedComponent.kt"


# annotations
.annotation runtime Ldagger/Component;
    modules = {
        Lcom/android/systemui/unfold/UnfoldSharedModule;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/unfold/UnfoldSharedComponent$Factory;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008a\u0018\u00002\u00020\u0001:\u0001\u0007R\u0018\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/android/systemui/unfold/UnfoldSharedComponent;",
        "",
        "unfoldTransitionProvider",
        "Ljava/util/Optional;",
        "Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;",
        "getUnfoldTransitionProvider",
        "()Ljava/util/Optional;",
        "Factory",
        "frameworks__base__packages__SystemUI__shared__android_common__SystemUISharedLib"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract getUnfoldTransitionProvider()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;",
            ">;"
        }
    .end annotation
.end method
