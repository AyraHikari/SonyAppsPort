.class public final Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;",
        "Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;",
        ">;",
        "Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainerOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 7449
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 7450
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCardinality()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;
    .locals 1

    .line 7526
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->copyOnWrite()V

    .line 7527
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->-$$Nest$mclearCardinality(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)V

    .line 7528
    return-object p0
.end method

.method public clearIndex()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;
    .locals 1

    .line 7479
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->copyOnWrite()V

    .line 7480
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->-$$Nest$mclearIndex(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)V

    .line 7481
    return-object p0
.end method

.method public getCardinality()I
    .locals 1

    .line 7504
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->getCardinality()I

    move-result v0

    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 7465
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->getIndex()I

    move-result v0

    return v0
.end method

.method public hasCardinality()Z
    .locals 1

    .line 7493
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->hasCardinality()Z

    move-result v0

    return v0
.end method

.method public hasIndex()Z
    .locals 1

    .line 7458
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->hasIndex()Z

    move-result v0

    return v0
.end method

.method public setCardinality(I)Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 7514
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->copyOnWrite()V

    .line 7515
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->-$$Nest$msetCardinality(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;I)V

    .line 7516
    return-object p0
.end method

.method public setIndex(I)Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 7471
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->copyOnWrite()V

    .line 7472
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;->-$$Nest$msetIndex(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;I)V

    .line 7473
    return-object p0
.end method
