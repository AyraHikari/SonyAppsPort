.class public abstract enum Lcom/sonyericsson/music/library/Page;
.super Ljava/lang/Enum;
.source "Page.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/library/Page$CustomizedPageContainer;,
        Lcom/sonyericsson/music/library/Page$PageContainer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/music/library/Page;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/music/library/Page;

.field public static final enum ALBUMS:Lcom/sonyericsson/music/library/Page;

.field public static final enum ARTISTS:Lcom/sonyericsson/music/library/Page;

.field public static final enum GENRES:Lcom/sonyericsson/music/library/Page;

.field private static final INVALID_POSITION:I = -0x80000000

.field public static final enum PLAYLISTS:Lcom/sonyericsson/music/library/Page;

.field public static final enum SONGS:Lcom/sonyericsson/music/library/Page;


# instance fields
.field private final mIcon:I

.field private mPageRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final mPageTitleResId:I

.field private final mTag:Ljava/lang/String;

.field private final mTitle:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 23
    new-instance v7, Lcom/sonyericsson/music/library/Page$1;

    const-string v1, "PLAYLISTS"

    const-string v5, "playlists"

    const/4 v2, 0x0

    const v3, 0x7f1002b5

    const v4, 0x7f08008c

    const v6, 0x7f1002ad

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/music/library/Page$1;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v7, Lcom/sonyericsson/music/library/Page;->PLAYLISTS:Lcom/sonyericsson/music/library/Page;

    .line 29
    new-instance v0, Lcom/sonyericsson/music/library/Page$2;

    const-string v9, "ARTISTS"

    const-string v13, "artists"

    const/4 v10, 0x1

    const v11, 0x7f1002b2

    const v12, 0x7f080084

    const v14, 0x7f1002aa

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/music/library/Page$2;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/library/Page;->ARTISTS:Lcom/sonyericsson/music/library/Page;

    .line 35
    new-instance v0, Lcom/sonyericsson/music/library/Page$3;

    const-string v2, "ALBUMS"

    const-string v6, "albums"

    const/4 v3, 0x2

    const v4, 0x7f1002b1

    const v5, 0x7f080083

    const v7, 0x7f1002a9

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/music/library/Page$3;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/library/Page;->ALBUMS:Lcom/sonyericsson/music/library/Page;

    .line 41
    new-instance v0, Lcom/sonyericsson/music/library/Page$4;

    const-string v9, "SONGS"

    const-string v13, "tracks"

    const/4 v10, 0x3

    const v11, 0x7f1002ba

    const v12, 0x7f080090

    const v14, 0x7f1002ae

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/music/library/Page$4;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/library/Page;->SONGS:Lcom/sonyericsson/music/library/Page;

    .line 47
    new-instance v0, Lcom/sonyericsson/music/library/Page$5;

    const-string v2, "GENRES"

    const-string v6, "genres"

    const/4 v3, 0x4

    const v4, 0x7f1002b4

    const v5, 0x7f080088

    const v7, 0x7f1002ac

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/music/library/Page$5;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/music/library/Page;->GENRES:Lcom/sonyericsson/music/library/Page;

    const/4 v0, 0x5

    .line 21
    new-array v0, v0, [Lcom/sonyericsson/music/library/Page;

    sget-object v1, Lcom/sonyericsson/music/library/Page;->PLAYLISTS:Lcom/sonyericsson/music/library/Page;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/library/Page;->ARTISTS:Lcom/sonyericsson/music/library/Page;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/library/Page;->ALBUMS:Lcom/sonyericsson/music/library/Page;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/library/Page;->SONGS:Lcom/sonyericsson/music/library/Page;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/music/library/Page;->GENRES:Lcom/sonyericsson/music/library/Page;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/music/library/Page;->$VALUES:[Lcom/sonyericsson/music/library/Page;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    iput p3, p0, Lcom/sonyericsson/music/library/Page;->mTitle:I

    .line 68
    iput p4, p0, Lcom/sonyericsson/music/library/Page;->mIcon:I

    .line 69
    iput-object p5, p0, Lcom/sonyericsson/music/library/Page;->mTag:Ljava/lang/String;

    .line 70
    iput p6, p0, Lcom/sonyericsson/music/library/Page;->mPageTitleResId:I

    .line 71
    new-instance p1, Ljava/lang/ref/WeakReference;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sonyericsson/music/library/Page;->mPageRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIILjava/lang/String;ILcom/sonyericsson/music/library/Page$1;)V
    .locals 0

    .line 21
    invoke-direct/range {p0 .. p6}, Lcom/sonyericsson/music/library/Page;-><init>(Ljava/lang/String;IIILjava/lang/String;I)V

    return-void
.end method

.method public static clearCustomizedMyLibraryPages(Landroid/content/Context;)V
    .locals 0

    .line 148
    invoke-static {p0}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->clearCustomizedMyLibraryPages(Landroid/content/Context;)V

    return-void
.end method

.method public static customizePagesOrder(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/library/Page$PageContainer;",
            ">;)V"
        }
    .end annotation

    .line 129
    invoke-static {p1}, Lcom/sonyericsson/music/library/Page;->getCustomizedPageContainers(Ljava/util/List;)[Lcom/sonyericsson/music/library/Page$CustomizedPageContainer;

    move-result-object p1

    .line 131
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 132
    const-class v1, [Lcom/sonyericsson/music/library/Page$CustomizedPageContainer;

    .line 133
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    .line 135
    invoke-static {p0, p1}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->setCustomizedMyLibraryPages(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static getCustomizedPageContainers(Ljava/util/List;)[Lcom/sonyericsson/music/library/Page$CustomizedPageContainer;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/library/Page$PageContainer;",
            ">;)[",
            "Lcom/sonyericsson/music/library/Page$CustomizedPageContainer;"
        }
    .end annotation

    .line 201
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 202
    new-array v1, v0, [Lcom/sonyericsson/music/library/Page$CustomizedPageContainer;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 204
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/music/library/Page$PageContainer;

    .line 205
    new-instance v4, Lcom/sonyericsson/music/library/Page$CustomizedPageContainer;

    iget-object v5, v3, Lcom/sonyericsson/music/library/Page$PageContainer;->mPage:Lcom/sonyericsson/music/library/Page;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    iget-boolean v3, v3, Lcom/sonyericsson/music/library/Page$PageContainer;->mIsEnabled:Z

    invoke-direct {v4, v5, v3}, Lcom/sonyericsson/music/library/Page$CustomizedPageContainer;-><init>(Ljava/lang/String;Z)V

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static getCustomizedPagePosition(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .line 153
    invoke-static {p0}, Lcom/sonyericsson/music/library/Page;->getPageContainers(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 155
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/library/Page$PageContainer;

    .line 156
    iget-object v1, v1, Lcom/sonyericsson/music/library/Page$PageContainer;->mPage:Lcom/sonyericsson/music/library/Page;

    invoke-virtual {v1}, Lcom/sonyericsson/music/library/Page;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/high16 p0, -0x80000000

    return p0
.end method

.method private static getCustomizedPagesOrder(Landroid/content/Context;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/library/Page$PageContainer;",
            ">;"
        }
    .end annotation

    .line 167
    invoke-static {p0}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->getCustomizedMyLibraryPages(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    .line 169
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/sonyericsson/music/library/Page;->values()[Lcom/sonyericsson/music/library/Page;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 170
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 171
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    .line 172
    const-class v5, [Lcom/sonyericsson/music/library/Page$CustomizedPageContainer;

    .line 173
    invoke-virtual {v4, v0, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/library/Page$CustomizedPageContainer;

    .line 175
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v0, :cond_2

    .line 177
    array-length v5, v0

    if-ne v4, v5, :cond_2

    .line 178
    array-length v5, v0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, v0, v6

    .line 179
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/music/library/Page;

    .line 180
    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v7, Lcom/sonyericsson/music/library/Page$CustomizedPageContainer;->mPageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 181
    new-instance v8, Lcom/sonyericsson/music/library/Page$PageContainer;

    iget-boolean v7, v7, Lcom/sonyericsson/music/library/Page$CustomizedPageContainer;->mIsEnabled:Z

    invoke-direct {v8, v9, v7}, Lcom/sonyericsson/music/library/Page$PageContainer;-><init>(Lcom/sonyericsson/music/library/Page;Z)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, -0x1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    if-lez v4, :cond_3

    .line 191
    invoke-static {p0}, Lcom/sonyericsson/music/library/Page;->clearCustomizedMyLibraryPages(Landroid/content/Context;)V

    .line 192
    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_1

    :cond_3
    move-object v2, v3

    :cond_4
    :goto_1
    return-object v2
.end method

.method public static getDefaultPageContainers()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/library/Page$PageContainer;",
            ">;"
        }
    .end annotation

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 140
    invoke-static {}, Lcom/sonyericsson/music/library/Page;->values()[Lcom/sonyericsson/music/library/Page;

    move-result-object v1

    .line 141
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 142
    new-instance v5, Lcom/sonyericsson/music/library/Page$PageContainer;

    const/4 v6, 0x1

    invoke-direct {v5, v4, v6}, Lcom/sonyericsson/music/library/Page$PageContainer;-><init>(Lcom/sonyericsson/music/library/Page;Z)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getEnabledPages(Landroid/content/Context;)[Lcom/sonyericsson/music/library/Page;
    .locals 3

    .line 101
    invoke-static {p0}, Lcom/sonyericsson/music/library/Page;->getCustomizedPagesOrder(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/library/Page$PageContainer;

    .line 106
    iget-boolean v2, v1, Lcom/sonyericsson/music/library/Page$PageContainer;->mIsEnabled:Z

    if-eqz v2, :cond_0

    .line 107
    iget-object v1, v1, Lcom/sonyericsson/music/library/Page$PageContainer;->mPage:Lcom/sonyericsson/music/library/Page;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 110
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_2

    .line 114
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lcom/sonyericsson/music/library/Page;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sonyericsson/music/library/Page;

    return-object p0

    .line 111
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Customized pages size is 0, should not be possible"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 117
    :cond_3
    invoke-static {}, Lcom/sonyericsson/music/library/Page;->values()[Lcom/sonyericsson/music/library/Page;

    move-result-object p0

    return-object p0
.end method

.method public static getPageContainers(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/library/Page$PageContainer;",
            ">;"
        }
    .end annotation

    .line 121
    invoke-static {p0}, Lcom/sonyericsson/music/library/Page;->getCustomizedPagesOrder(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    .line 123
    invoke-static {}, Lcom/sonyericsson/music/library/Page;->getDefaultPageContainers()Ljava/util/List;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/music/library/Page;
    .locals 1

    .line 21
    const-class v0, Lcom/sonyericsson/music/library/Page;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/music/library/Page;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/music/library/Page;
    .locals 1

    .line 21
    sget-object v0, Lcom/sonyericsson/music/library/Page;->$VALUES:[Lcom/sonyericsson/music/library/Page;

    invoke-virtual {v0}, [Lcom/sonyericsson/music/library/Page;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/music/library/Page;

    return-object v0
.end method


# virtual methods
.method public getDrawableResId()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/sonyericsson/music/library/Page;->mIcon:I

    return v0
.end method

.method public getFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/sonyericsson/music/library/Page;->mPageRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method abstract getLibraryBaseFragment(I)Lcom/sonyericsson/music/library/LibraryBaseFragment;
.end method

.method public getPageTitleResId()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/sonyericsson/music/library/Page;->mPageTitleResId:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/music/library/Page;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleResId()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/sonyericsson/music/library/Page;->mTitle:I

    return v0
.end method

.method public setFragment(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 91
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/Page;->mPageRef:Ljava/lang/ref/WeakReference;

    return-void
.end method
