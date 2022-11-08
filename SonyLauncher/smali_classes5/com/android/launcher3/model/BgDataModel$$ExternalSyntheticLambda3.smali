.class public final synthetic Lcom/android/launcher3/model/BgDataModel$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/stream/Stream$Builder;


# direct methods
.method public synthetic constructor <init>(Ljava/util/stream/Stream$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/BgDataModel$$ExternalSyntheticLambda3;->f$0:Ljava/util/stream/Stream$Builder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel$$ExternalSyntheticLambda3;->f$0:Ljava/util/stream/Stream$Builder;

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-interface {v0, p1}, Ljava/util/stream/Stream$Builder;->accept(Ljava/lang/Object;)V

    return-void
.end method
