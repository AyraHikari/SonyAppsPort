.class public interface abstract Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider$Factory;
.super Ljava/lang/Object;
.source "ScaleAwareTransitionProgressProvider.kt"


# annotations
.annotation runtime Ldagger/assisted/AssistedFactory;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008g\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider$Factory;",
        "",
        "wrap",
        "Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider;",
        "progressProvider",
        "Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;",
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
.method public abstract wrap(Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider;)Lcom/android/systemui/unfold/util/ScaleAwareTransitionProgressProvider;
.end method
