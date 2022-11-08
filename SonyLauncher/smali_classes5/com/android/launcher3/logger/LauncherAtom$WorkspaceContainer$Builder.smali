.class public final Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;",
        "Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;",
        ">;",
        "Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainerOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 11590
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 11591
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearGridX()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;
    .locals 1

    .line 11683
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->copyOnWrite()V

    .line 11684
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->-$$Nest$mclearGridX(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;)V

    .line 11685
    return-object p0
.end method

.method public clearGridY()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;
    .locals 1

    .line 11730
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->copyOnWrite()V

    .line 11731
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->-$$Nest$mclearGridY(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;)V

    .line 11732
    return-object p0
.end method

.method public clearPageIndex()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;
    .locals 1

    .line 11636
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->copyOnWrite()V

    .line 11637
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->-$$Nest$mclearPageIndex(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;)V

    .line 11638
    return-object p0
.end method

.method public getGridX()I
    .locals 1

    .line 11661
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->getGridX()I

    move-result v0

    return v0
.end method

.method public getGridY()I
    .locals 1

    .line 11708
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->getGridY()I

    move-result v0

    return v0
.end method

.method public getPageIndex()I
    .locals 1

    .line 11614
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->getPageIndex()I

    move-result v0

    return v0
.end method

.method public hasGridX()Z
    .locals 1

    .line 11650
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->hasGridX()Z

    move-result v0

    return v0
.end method

.method public hasGridY()Z
    .locals 1

    .line 11697
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->hasGridY()Z

    move-result v0

    return v0
.end method

.method public hasPageIndex()Z
    .locals 1

    .line 11603
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->hasPageIndex()Z

    move-result v0

    return v0
.end method

.method public setGridX(I)Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 11671
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->copyOnWrite()V

    .line 11672
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->-$$Nest$msetGridX(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;I)V

    .line 11673
    return-object p0
.end method

.method public setGridY(I)Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 11718
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->copyOnWrite()V

    .line 11719
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->-$$Nest$msetGridY(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;I)V

    .line 11720
    return-object p0
.end method

.method public setPageIndex(I)Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 11624
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->copyOnWrite()V

    .line 11625
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->-$$Nest$msetPageIndex(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;I)V

    .line 11626
    return-object p0
.end method
