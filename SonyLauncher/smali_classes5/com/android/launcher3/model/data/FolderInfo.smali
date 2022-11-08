.class public Lcom/android/launcher3/model/data/FolderInfo;
.super Lcom/android/launcher3/model/data/ItemInfo;
.source "FolderInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/model/data/FolderInfo$FolderListener;,
        Lcom/android/launcher3/model/data/FolderInfo$LabelState;
    }
.end annotation


# static fields
.field public static final EXTRA_FOLDER_SUGGESTIONS:Ljava/lang/String; = "suggest"

.field public static final FLAG_ITEMS_SORTED:I = 0x1

.field public static final FLAG_MANUAL_FOLDER_NAME:I = 0x8

.field public static final FLAG_MULTI_PAGE_ANIMATION:I = 0x4

.field public static final FLAG_WORK_FOLDER:I = 0x2

.field public static final NO_FLAGS:I


# instance fields
.field public contents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/FolderInfo$FolderListener;",
            ">;"
        }
    .end annotation
.end field

.field public options:I

.field public suggestedFolderNames:Lcom/android/launcher3/folder/FolderNameInfos;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 116
    invoke-direct {p0}, Lcom/android/launcher3/model/data/ItemInfo;-><init>()V

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->mListeners:Ljava/util/ArrayList;

    .line 117
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->itemType:I

    .line 118
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->user:Landroid/os/UserHandle;

    .line 119
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/model/data/FolderInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/model/data/FolderInfo;

    .line 138
    invoke-direct {p0, p1}, Lcom/android/launcher3/model/data/ItemInfo;-><init>(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->mListeners:Ljava/util/ArrayList;

    .line 139
    iget-object v0, p1, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 140
    iget v0, p1, Lcom/android/launcher3/model/data/FolderInfo;->options:I

    iput v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->options:I

    .line 141
    iget-object v0, p1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 142
    return-void
.end method

.method static synthetic lambda$getAcceptedSuggestionIndex$0([Ljava/lang/CharSequence;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "labels"    # [Ljava/lang/CharSequence;
    .param p1, "newLabel"    # Ljava/lang/String;
    .param p2, "index"    # I

    .line 321
    aget-object v0, p0, p2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    aget-object v0, p0, p2

    .line 323
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 321
    :goto_0
    return v0
.end method


# virtual methods
.method public add(Lcom/android/launcher3/model/data/ItemInfo;IZ)V
    .locals 2
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "rank"    # I
    .param p3, "animate"    # Z

    .line 158
    iget-object v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p2, v1, v0}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result p2

    .line 159
    iget-object v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 160
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/model/data/FolderInfo;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/android/launcher3/model/data/FolderInfo;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/FolderInfo$FolderListener;

    invoke-interface {v1, p1, p2}, Lcom/android/launcher3/model/data/FolderInfo$FolderListener;->onAdd(Lcom/android/launcher3/model/data/ItemInfo;I)V

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/launcher3/model/data/FolderInfo;->itemsChanged(Z)V

    .line 164
    return-void
.end method

.method public add(Lcom/android/launcher3/model/data/ItemInfo;Z)V
    .locals 1
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "animate"    # Z

    .line 151
    iget-object v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher3/model/data/FolderInfo;->add(Lcom/android/launcher3/model/data/ItemInfo;IZ)V

    .line 152
    return-void
.end method

.method public addListener(Lcom/android/launcher3/model/data/FolderInfo$FolderListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/model/data/FolderInfo$FolderListener;

    .line 194
    iget-object v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    return-void
.end method

.method public buildProto()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;
    .locals 1

    .line 307
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/data/FolderInfo;->buildProto(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    move-result-object v0

    return-object v0
.end method

.method public buildProto(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;
    .locals 3
    .param p1, "fInfo"    # Lcom/android/launcher3/model/data/FolderInfo;

    .line 241
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 242
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->setCardinality(I)Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;

    move-result-object v0

    .line 243
    .local v0, "folderIcon":Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;
    sget-object v1, Lcom/android/launcher3/model/data/FolderInfo$LabelState;->SUGGESTED:Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/FolderInfo;->getLabelState()Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/model/data/FolderInfo$LabelState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;->setLabelInfo(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/FolderInfo;->getDefaultItemInfoBuilder()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    move-result-object v1

    .line 247
    invoke-virtual {v1, v0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->setFolderIcon(Lcom/android/launcher3/logger/LauncherAtom$FolderIcon$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/model/data/FolderInfo;->rank:I

    .line 248
    invoke-virtual {v1, v2}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->setRank(I)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    move-result-object v1

    .line 249
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/FolderInfo;->getLabelState()Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/model/data/FolderInfo$LabelState;->-$$Nest$fgetmLogAttribute(Lcom/android/launcher3/model/data/FolderInfo$LabelState;)Lcom/android/launcher3/logger/LauncherAtom$Attribute;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->addItemAttributes(Lcom/android/launcher3/logger/LauncherAtom$Attribute;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    move-result-object v1

    .line 250
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/FolderInfo;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->setContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    move-result-object v1

    .line 251
    invoke-virtual {v1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    .line 246
    return-object v1
.end method

.method public copy()Lcom/android/launcher3/model/data/FolderInfo;
    .locals 6

    .line 122
    iget v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->id:I

    .line 123
    .local v0, "savedId":I
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher3/model/data/FolderInfo;->id:I

    .line 124
    new-instance v1, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-direct {v1}, Lcom/android/launcher3/model/data/FolderInfo;-><init>()V

    .line 125
    .local v1, "copy":Lcom/android/launcher3/model/data/FolderInfo;
    invoke-virtual {v1, p0}, Lcom/android/launcher3/model/data/FolderInfo;->copyFrom(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 126
    iget-object v2, p0, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    iput-object v2, v1, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 127
    iget-object v2, p0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    .line 128
    .local v3, "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    instance-of v4, v3, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v4, :cond_0

    .line 129
    move-object v4, v3

    check-cast v4, Lcom/android/launcher3/model/data/AppInfo;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/launcher3/model/data/AppInfo;->makeWorkspaceItem(Landroid/content/Context;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v4

    .line 130
    .local v4, "shortcutInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    iget-object v5, v1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    .end local v3    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v4    # "shortcutInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    :cond_0
    goto :goto_0

    .line 133
    :cond_1
    iput v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->id:I

    .line 134
    return-object v1
.end method

.method protected dumpProperties()Ljava/lang/String;
    .locals 3

    .line 236
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-super {p0}, Lcom/android/launcher3/model/data/ItemInfo;->dumpProperties()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/FolderInfo;->getLabelState()Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s; labelState=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAcceptedSuggestionIndex()Ljava/util/OptionalInt;
    .locals 4

    .line 314
    iget-object v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    const-string v1, "Expected valid folder label, but found null"

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 315
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "newLabel":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/launcher3/model/data/FolderInfo;->suggestedFolderNames:Lcom/android/launcher3/folder/FolderNameInfos;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderNameInfos;->hasSuggestions()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 319
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/model/data/FolderInfo;->suggestedFolderNames:Lcom/android/launcher3/folder/FolderNameInfos;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderNameInfos;->getLabels()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 320
    .local v1, "labels":[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v2, v3}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/model/data/FolderInfo$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, v0}, Lcom/android/launcher3/model/data/FolderInfo$$ExternalSyntheticLambda0;-><init>([Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 321
    invoke-interface {v2, v3}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object v2

    .line 324
    invoke-interface {v2}, Ljava/util/stream/IntStream;->sequential()Ljava/util/stream/IntStream;

    move-result-object v2

    .line 325
    invoke-interface {v2}, Ljava/util/stream/IntStream;->findFirst()Ljava/util/OptionalInt;

    move-result-object v2

    .line 320
    return-object v2

    .line 317
    .end local v1    # "labels":[Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v1

    return-object v1
.end method

.method public getFromLabelState()Lcom/android/launcher3/logger/LauncherAtom$FromState;
    .locals 2

    .line 332
    sget-object v0, Lcom/android/launcher3/model/data/FolderInfo$1;->$SwitchMap$com$android$launcher3$model$data$FolderInfo$LabelState:[I

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/FolderInfo;->getLabelState()Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/FolderInfo$LabelState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 341
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FromState;->FROM_STATE_UNSPECIFIED:Lcom/android/launcher3/logger/LauncherAtom$FromState;

    return-object v0

    .line 338
    :pswitch_0
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FromState;->FROM_SUGGESTED:Lcom/android/launcher3/logger/LauncherAtom$FromState;

    return-object v0

    .line 336
    :pswitch_1
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FromState;->FROM_CUSTOM:Lcom/android/launcher3/logger/LauncherAtom$FromState;

    return-object v0

    .line 334
    :pswitch_2
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FromState;->FROM_EMPTY:Lcom/android/launcher3/logger/LauncherAtom$FromState;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLabelState()Lcom/android/launcher3/model/data/FolderInfo$LabelState;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/launcher3/model/data/FolderInfo$LabelState;->UNLABELED:Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    goto :goto_0

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/launcher3/model/data/FolderInfo$LabelState;->EMPTY:Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    goto :goto_0

    .line 290
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/data/FolderInfo;->hasOption(I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/launcher3/model/data/FolderInfo$LabelState;->MANUAL:Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    goto :goto_0

    .line 291
    :cond_2
    sget-object v0, Lcom/android/launcher3/model/data/FolderInfo$LabelState;->SUGGESTED:Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    .line 288
    :goto_0
    return-object v0
.end method

.method public getToLabelState()Lcom/android/launcher3/logger/LauncherAtom$ToState;
    .locals 3

    .line 349
    iget-object v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 350
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_STATE_UNSPECIFIED:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    return-object v0

    .line 353
    :cond_0
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->FOLDER_NAME_SUGGEST:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 354
    iget-object v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 355
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_CUSTOM_WITH_SUGGESTIONS_DISABLED:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    goto :goto_0

    .line 356
    :cond_1
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_EMPTY_WITH_SUGGESTIONS_DISABLED:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    .line 354
    :goto_0
    return-object v0

    .line 361
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->suggestedFolderNames:Lcom/android/launcher3/folder/FolderNameInfos;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderNameInfos;->hasSuggestions()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_7

    .line 367
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->suggestedFolderNames:Lcom/android/launcher3/folder/FolderNameInfos;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderNameInfos;->hasPrimary()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 368
    .local v0, "hasValidPrimary":Z
    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_6

    .line 369
    if-eqz v0, :cond_5

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_EMPTY_WITH_VALID_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    goto :goto_2

    .line 370
    :cond_5
    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_EMPTY_WITH_VALID_SUGGESTIONS_AND_EMPTY_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    .line 369
    :goto_2
    return-object v1

    .line 373
    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/FolderInfo;->getAcceptedSuggestionIndex()Ljava/util/OptionalInt;

    move-result-object v1

    .line 374
    .local v1, "accepted_suggestion_index":Ljava/util/OptionalInt;
    invoke-virtual {v1}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v2

    if-nez v2, :cond_8

    .line 375
    if-eqz v0, :cond_7

    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_CUSTOM_WITH_VALID_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    goto :goto_3

    .line 376
    :cond_7
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_CUSTOM_WITH_VALID_SUGGESTIONS_AND_EMPTY_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    .line 375
    :goto_3
    return-object v2

    .line 379
    :cond_8
    invoke-virtual {v1}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 394
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_STATE_UNSPECIFIED:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    return-object v2

    .line 389
    :pswitch_0
    if-eqz v0, :cond_9

    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_SUGGESTION3_WITH_VALID_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    goto :goto_4

    .line 390
    :cond_9
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_SUGGESTION3_WITH_EMPTY_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    .line 389
    :goto_4
    return-object v2

    .line 386
    :pswitch_1
    if-eqz v0, :cond_a

    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_SUGGESTION2_WITH_VALID_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    goto :goto_5

    .line 387
    :cond_a
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_SUGGESTION2_WITH_EMPTY_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    .line 386
    :goto_5
    return-object v2

    .line 383
    :pswitch_2
    if-eqz v0, :cond_b

    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_SUGGESTION1_WITH_VALID_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    goto :goto_6

    .line 384
    :cond_b
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_SUGGESTION1_WITH_EMPTY_PRIMARY:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    .line 383
    :goto_6
    return-object v2

    .line 381
    :pswitch_3
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_SUGGESTION0:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    return-object v2

    .line 362
    .end local v0    # "hasValidPrimary":Z
    .end local v1    # "accepted_suggestion_index":Ljava/util/OptionalInt;
    :cond_c
    :goto_7
    iget-object v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_d

    .line 363
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_CUSTOM_WITH_EMPTY_SUGGESTIONS:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    goto :goto_8

    .line 364
    :cond_d
    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ToState;->TO_EMPTY_WITH_EMPTY_SUGGESTIONS:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    .line 362
    :goto_8
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hasOption(I)Z
    .locals 1
    .param p1, "optionFlag"    # I

    .line 214
    iget v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->options:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public itemsChanged(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .line 202
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/model/data/FolderInfo;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/android/launcher3/model/data/FolderInfo;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/FolderInfo$FolderListener;

    invoke-interface {v1, p1}, Lcom/android/launcher3/model/data/FolderInfo$FolderListener;->onItemsChanged(Z)V

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public makeShallowCopy()Lcom/android/launcher3/model/data/ItemInfo;
    .locals 2

    .line 296
    new-instance v0, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-direct {v0}, Lcom/android/launcher3/model/data/FolderInfo;-><init>()V

    .line 297
    .local v0, "folderInfo":Lcom/android/launcher3/model/data/FolderInfo;
    invoke-virtual {v0, p0}, Lcom/android/launcher3/model/data/FolderInfo;->copyFrom(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 298
    iget-object v1, p0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 299
    return-object v0
.end method

.method public onAddToDatabase(Lcom/android/launcher3/util/ContentWriter;)V
    .locals 3
    .param p1, "writer"    # Lcom/android/launcher3/util/ContentWriter;

    .line 188
    invoke-super {p0, p1}, Lcom/android/launcher3/model/data/ItemInfo;->onAddToDatabase(Lcom/android/launcher3/util/ContentWriter;)V

    .line 189
    iget-object v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    const-string v1, "title"

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/model/data/FolderInfo;->options:I

    .line 190
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "options"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    .line 191
    return-void
.end method

.method public remove(Lcom/android/launcher3/model/data/ItemInfo;Z)V
    .locals 1
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "animate"    # Z

    .line 172
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/launcher3/model/data/FolderInfo;->removeAll(Ljava/util/List;Z)V

    .line 173
    return-void
.end method

.method public removeAll(Ljava/util/List;Z)V
    .locals 2
    .param p2, "animate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 179
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 180
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/model/data/FolderInfo;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/android/launcher3/model/data/FolderInfo;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/FolderInfo$FolderListener;

    invoke-interface {v1, p1}, Lcom/android/launcher3/model/data/FolderInfo$FolderListener;->onRemove(Ljava/util/List;)V

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/launcher3/model/data/FolderInfo;->itemsChanged(Z)V

    .line 184
    return-void
.end method

.method public removeListener(Lcom/android/launcher3/model/data/FolderInfo$FolderListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher3/model/data/FolderInfo$FolderListener;

    .line 198
    iget-object v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 199
    return-void
.end method

.method public setOption(IZLcom/android/launcher3/model/ModelWriter;)V
    .locals 3
    .param p1, "option"    # I
    .param p2, "isEnabled"    # Z
    .param p3, "writer"    # Lcom/android/launcher3/model/ModelWriter;

    .line 223
    iget v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->options:I

    .line 224
    .local v0, "oldOptions":I
    if-eqz p2, :cond_0

    .line 225
    iget v1, p0, Lcom/android/launcher3/model/data/FolderInfo;->options:I

    or-int/2addr v1, p1

    iput v1, p0, Lcom/android/launcher3/model/data/FolderInfo;->options:I

    goto :goto_0

    .line 227
    :cond_0
    iget v1, p0, Lcom/android/launcher3/model/data/FolderInfo;->options:I

    not-int v2, p1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/model/data/FolderInfo;->options:I

    .line 229
    :goto_0
    if-eqz p3, :cond_1

    iget v1, p0, Lcom/android/launcher3/model/data/FolderInfo;->options:I

    if-eq v0, v1, :cond_1

    .line 230
    invoke-virtual {p3, p0}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 232
    :cond_1
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;Lcom/android/launcher3/model/ModelWriter;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "modelWriter"    # Lcom/android/launcher3/model/ModelWriter;

    .line 258
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 259
    return-void

    .line 263
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    return-void

    .line 267
    :cond_1
    iput-object p1, p0, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 269
    if-nez p1, :cond_2

    sget-object v0, Lcom/android/launcher3/model/data/FolderInfo$LabelState;->UNLABELED:Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    goto :goto_0

    .line 270
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/launcher3/model/data/FolderInfo$LabelState;->EMPTY:Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    goto :goto_0

    .line 271
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/FolderInfo;->getAcceptedSuggestionIndex()Ljava/util/OptionalInt;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/launcher3/model/data/FolderInfo$LabelState;->SUGGESTED:Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    goto :goto_0

    .line 272
    :cond_4
    sget-object v0, Lcom/android/launcher3/model/data/FolderInfo$LabelState;->MANUAL:Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    :goto_0
    nop

    .line 274
    .local v0, "newLabelState":Lcom/android/launcher3/model/data/FolderInfo$LabelState;
    sget-object v1, Lcom/android/launcher3/model/data/FolderInfo$LabelState;->MANUAL:Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/data/FolderInfo$LabelState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 275
    iget v1, p0, Lcom/android/launcher3/model/data/FolderInfo;->options:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/android/launcher3/model/data/FolderInfo;->options:I

    goto :goto_1

    .line 277
    :cond_5
    iget v1, p0, Lcom/android/launcher3/model/data/FolderInfo;->options:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/android/launcher3/model/data/FolderInfo;->options:I

    .line 279
    :goto_1
    if-eqz p2, :cond_6

    .line 280
    invoke-virtual {p2, p0}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 282
    :cond_6
    return-void
.end method
