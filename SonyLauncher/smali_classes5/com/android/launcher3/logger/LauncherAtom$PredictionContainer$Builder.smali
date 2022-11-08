.class public final Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/android/launcher3/logger/LauncherAtom$PredictionContainerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;",
        "Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;",
        ">;",
        "Lcom/android/launcher3/logger/LauncherAtom$PredictionContainerOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 5920
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 5921
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearParentContainer()Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;
    .locals 1

    .line 5930
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;->copyOnWrite()V

    .line 5931
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->-$$Nest$mclearParentContainer(Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;)V

    .line 5932
    return-object p0
.end method

.method public clearTaskbarContainer()Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;
    .locals 1

    .line 5979
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;->copyOnWrite()V

    .line 5980
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->-$$Nest$mclearTaskbarContainer(Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;)V

    .line 5981
    return-object p0
.end method

.method public getParentContainerCase()Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$ParentContainerCase;
    .locals 1

    .line 5926
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->getParentContainerCase()Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$ParentContainerCase;

    move-result-object v0

    return-object v0
.end method

.method public getTaskbarContainer()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;
    .locals 1

    .line 5948
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->getTaskbarContainer()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    move-result-object v0

    return-object v0
.end method

.method public hasTaskbarContainer()Z
    .locals 1

    .line 5941
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->hasTaskbarContainer()Z

    move-result v0

    return v0
.end method

.method public mergeTaskbarContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    .line 5971
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;->copyOnWrite()V

    .line 5972
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->-$$Nest$mmergeTaskbarContainer(Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)V

    .line 5973
    return-object p0
.end method

.method public setTaskbarContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;

    .line 5963
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;->copyOnWrite()V

    .line 5964
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->-$$Nest$msetTaskbarContainer(Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;)V

    .line 5965
    return-object p0
.end method

.method public setTaskbarContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    .line 5954
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;->copyOnWrite()V

    .line 5955
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;->-$$Nest$msetTaskbarContainer(Lcom/android/launcher3/logger/LauncherAtom$PredictionContainer;Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)V

    .line 5956
    return-object p0
.end method
