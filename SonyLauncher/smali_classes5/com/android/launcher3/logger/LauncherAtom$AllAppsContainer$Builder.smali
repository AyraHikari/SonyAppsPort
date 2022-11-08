.class public final Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;",
        "Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;",
        ">;",
        "Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainerOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 5369
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 5370
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearParentContainer()Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;
    .locals 1

    .line 5379
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;->copyOnWrite()V

    .line 5380
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->-$$Nest$mclearParentContainer(Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;)V

    .line 5381
    return-object p0
.end method

.method public clearTaskbarContainer()Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;
    .locals 1

    .line 5428
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;->copyOnWrite()V

    .line 5429
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->-$$Nest$mclearTaskbarContainer(Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;)V

    .line 5430
    return-object p0
.end method

.method public getParentContainerCase()Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;
    .locals 1

    .line 5375
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->getParentContainerCase()Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;

    move-result-object v0

    return-object v0
.end method

.method public getTaskbarContainer()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;
    .locals 1

    .line 5397
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->getTaskbarContainer()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    move-result-object v0

    return-object v0
.end method

.method public hasTaskbarContainer()Z
    .locals 1

    .line 5390
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->hasTaskbarContainer()Z

    move-result v0

    return v0
.end method

.method public mergeTaskbarContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    .line 5420
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;->copyOnWrite()V

    .line 5421
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->-$$Nest$mmergeTaskbarContainer(Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)V

    .line 5422
    return-object p0
.end method

.method public setTaskbarContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;

    .line 5412
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;->copyOnWrite()V

    .line 5413
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->-$$Nest$msetTaskbarContainer(Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;)V

    .line 5414
    return-object p0
.end method

.method public setTaskbarContainer(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    .line 5403
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;->copyOnWrite()V

    .line 5404
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;->-$$Nest$msetTaskbarContainer(Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer;Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)V

    .line 5405
    return-object p0
.end method
