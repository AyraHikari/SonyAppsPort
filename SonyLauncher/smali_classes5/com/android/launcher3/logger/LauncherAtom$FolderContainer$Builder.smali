.class public final Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "LauncherAtom.java"

# interfaces
.implements Lcom/android/launcher3/logger/LauncherAtom$FolderContainerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;",
        "Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;",
        ">;",
        "Lcom/android/launcher3/logger/LauncherAtom$FolderContainerOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 12937
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 12938
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearGridX()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;
    .locals 1

    .line 13010
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->copyOnWrite()V

    .line 13011
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->-$$Nest$mclearGridX(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;)V

    .line 13012
    return-object p0
.end method

.method public clearGridY()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;
    .locals 1

    .line 13041
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->copyOnWrite()V

    .line 13042
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->-$$Nest$mclearGridY(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;)V

    .line 13043
    return-object p0
.end method

.method public clearHotseat()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;
    .locals 1

    .line 13137
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->copyOnWrite()V

    .line 13138
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->-$$Nest$mclearHotseat(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;)V

    .line 13139
    return-object p0
.end method

.method public clearPageIndex()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;
    .locals 1

    .line 12979
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->copyOnWrite()V

    .line 12980
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->-$$Nest$mclearPageIndex(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;)V

    .line 12981
    return-object p0
.end method

.method public clearParentContainer()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;
    .locals 1

    .line 12947
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->copyOnWrite()V

    .line 12948
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->-$$Nest$mclearParentContainer(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;)V

    .line 12949
    return-object p0
.end method

.method public clearTaskbar()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;
    .locals 1

    .line 13185
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->copyOnWrite()V

    .line 13186
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->-$$Nest$mclearTaskbar(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;)V

    .line 13187
    return-object p0
.end method

.method public clearWorkspace()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;
    .locals 1

    .line 13089
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->copyOnWrite()V

    .line 13090
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-static {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->-$$Nest$mclearWorkspace(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;)V

    .line 13091
    return-object p0
.end method

.method public getGridX()I
    .locals 1

    .line 12996
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->getGridX()I

    move-result v0

    return v0
.end method

.method public getGridY()I
    .locals 1

    .line 13027
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->getGridY()I

    move-result v0

    return v0
.end method

.method public getHotseat()Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;
    .locals 1

    .line 13106
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->getHotseat()Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    move-result-object v0

    return-object v0
.end method

.method public getPageIndex()I
    .locals 1

    .line 12965
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->getPageIndex()I

    move-result v0

    return v0
.end method

.method public getParentContainerCase()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;
    .locals 1

    .line 12943
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->getParentContainerCase()Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    move-result-object v0

    return-object v0
.end method

.method public getTaskbar()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;
    .locals 1

    .line 13154
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->getTaskbar()Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    move-result-object v0

    return-object v0
.end method

.method public getWorkspace()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;
    .locals 1

    .line 13058
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->getWorkspace()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    move-result-object v0

    return-object v0
.end method

.method public hasGridX()Z
    .locals 1

    .line 12989
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->hasGridX()Z

    move-result v0

    return v0
.end method

.method public hasGridY()Z
    .locals 1

    .line 13020
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->hasGridY()Z

    move-result v0

    return v0
.end method

.method public hasHotseat()Z
    .locals 1

    .line 13099
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->hasHotseat()Z

    move-result v0

    return v0
.end method

.method public hasPageIndex()Z
    .locals 1

    .line 12958
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->hasPageIndex()Z

    move-result v0

    return v0
.end method

.method public hasTaskbar()Z
    .locals 1

    .line 13147
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->hasTaskbar()Z

    move-result v0

    return v0
.end method

.method public hasWorkspace()Z
    .locals 1

    .line 13051
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->hasWorkspace()Z

    move-result v0

    return v0
.end method

.method public mergeHotseat(Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;)Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    .line 13129
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->copyOnWrite()V

    .line 13130
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->-$$Nest$mmergeHotseat(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;)V

    .line 13131
    return-object p0
.end method

.method public mergeTaskbar(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    .line 13177
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->copyOnWrite()V

    .line 13178
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->-$$Nest$mmergeTaskbar(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)V

    .line 13179
    return-object p0
.end method

.method public mergeWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;)Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    .line 13081
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->copyOnWrite()V

    .line 13082
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->-$$Nest$mmergeWorkspace(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;)V

    .line 13083
    return-object p0
.end method

.method public setGridX(I)Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 13002
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->copyOnWrite()V

    .line 13003
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->-$$Nest$msetGridX(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;I)V

    .line 13004
    return-object p0
.end method

.method public setGridY(I)Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 13033
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->copyOnWrite()V

    .line 13034
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->-$$Nest$msetGridY(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;I)V

    .line 13035
    return-object p0
.end method

.method public setHotseat(Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;

    .line 13121
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->copyOnWrite()V

    .line 13122
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->-$$Nest$msetHotseat(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer$Builder;)V

    .line 13123
    return-object p0
.end method

.method public setHotseat(Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;)Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;

    .line 13112
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->copyOnWrite()V

    .line 13113
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->-$$Nest$msetHotseat(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;Lcom/android/launcher3/logger/LauncherAtom$HotseatContainer;)V

    .line 13114
    return-object p0
.end method

.method public setPageIndex(I)Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 12971
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->copyOnWrite()V

    .line 12972
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->-$$Nest$msetPageIndex(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;I)V

    .line 12973
    return-object p0
.end method

.method public setTaskbar(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;

    .line 13169
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->copyOnWrite()V

    .line 13170
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->-$$Nest$msetTaskbar(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer$Builder;)V

    .line 13171
    return-object p0
.end method

.method public setTaskbar(Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;

    .line 13160
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->copyOnWrite()V

    .line 13161
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->-$$Nest$msetTaskbar(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;Lcom/android/launcher3/logger/LauncherAtom$TaskBarContainer;)V

    .line 13162
    return-object p0
.end method

.method public setWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;
    .locals 1
    .param p1, "builderForValue"    # Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    .line 13073
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->copyOnWrite()V

    .line 13074
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->-$$Nest$msetWorkspace(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;)V

    .line 13075
    return-object p0
.end method

.method public setWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;)Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;
    .locals 1
    .param p1, "value"    # Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;

    .line 13064
    invoke-virtual {p0}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->copyOnWrite()V

    .line 13065
    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;

    invoke-static {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;->-$$Nest$msetWorkspace(Lcom/android/launcher3/logger/LauncherAtom$FolderContainer;Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;)V

    .line 13066
    return-object p0
.end method
