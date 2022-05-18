.class public Lcom/sonyericsson/music/library/FoldersFragment;
.super Lcom/sonyericsson/music/library/LibraryBaseFragment;
.source "FoldersFragment.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/sonyericsson/music/library/PaddedHeaderListScroller$PaddedHeaderListScrollerListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/sonyericsson/music/common/PermissionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/library/FoldersFragment$FoldersLoader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/music/library/LibraryBaseFragment;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/Set<",
        "Lcom/sonyericsson/music/common/Folder;",
        ">;>;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/sonyericsson/music/library/PaddedHeaderListScroller$PaddedHeaderListScrollerListener;",
        "Landroid/widget/AbsListView$OnScrollListener;",
        "Lcom/sonyericsson/music/common/PermissionListener;"
    }
.end annotation


# static fields
.field private static final LOADER_ID_FOLDERS:I = 0x1

.field public static final TAG:Ljava/lang/String; = "folders"


# instance fields
.field private mAdapter:Lcom/sonyericsson/music/library/FoldersAdapter;

.field private mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

.field private mContextMenuData:Ljava/lang/Object;

.field private mListView:Landroid/widget/ListView;

.field private mNoContentHeaderView:Landroid/view/View;

.field private mPaddedListScroller:Lcom/sonyericsson/music/library/PaddedHeaderListScroller;

.field private mPaddingHeader:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/sonyericsson/music/library/LibraryBaseFragment;-><init>()V

    .line 78
    new-instance v0, Lcom/sonyericsson/music/library/PaddedHeaderListScroller;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/library/PaddedHeaderListScroller;-><init>(Lcom/sonyericsson/music/library/PaddedHeaderListScroller$PaddedHeaderListScrollerListener;)V

    iput-object v0, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mPaddedListScroller:Lcom/sonyericsson/music/library/PaddedHeaderListScroller;

    return-void
.end method

.method public static newInstance()Lcom/sonyericsson/music/library/FoldersFragment;
    .locals 1

    .line 74
    new-instance v0, Lcom/sonyericsson/music/library/FoldersFragment;

    invoke-direct {v0}, Lcom/sonyericsson/music/library/FoldersFragment;-><init>()V

    return-object v0
.end method

.method private openFolder(Lcom/sonyericsson/music/common/Folder;)V
    .locals 6

    .line 245
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->isFragmentTransactionAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Folder;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 248
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Folder;->getPathDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Folder;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Folder;->getArtUri()Landroid/net/Uri;

    move-result-object p1

    new-instance v4, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;

    const-string v5, "folders"

    invoke-direct {v4, v5}, Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;-><init>(Ljava/lang/String;)V

    .line 247
    invoke-static {v1, v2, v3, p1, v4}, Lcom/sonyericsson/music/library/FolderFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Lcom/sonyericsson/music/library/FolderFragment;

    move-result-object p1

    .line 250
    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getMusicFragmentManager()Lcom/sonyericsson/music/MusicFragmentManager;

    move-result-object v0

    const-string v1, "folder"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/sonyericsson/music/MusicFragmentManager;->openFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method private removeNoContentHeaderView()V
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mNoContentHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 310
    iget-object v0, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mNoContentHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 311
    iget-object v0, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mAdapter:Lcom/sonyericsson/music/library/FoldersAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void
.end method

.method private showNoContentHeaderView()V
    .locals 4

    .line 295
    iget-object v0, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mNoContentHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 296
    invoke-direct {p0}, Lcom/sonyericsson/music/library/FoldersFragment;->removeNoContentHeaderView()V

    .line 298
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c005e

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mNoContentHeaderView:Landroid/view/View;

    .line 299
    iget-object v0, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mNoContentHeaderView:Landroid/view/View;

    const v1, 0x7f0901fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f100228

    .line 300
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v0, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 303
    iget-object v0, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mNoContentHeaderView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 304
    iget-object v0, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mAdapter:Lcom/sonyericsson/music/library/FoldersAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method protected getHeaderView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getMatcherUris()[Lcom/sonyericsson/music/library/BaseFragment$MatcherData;
    .locals 6

    .line 218
    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "external"

    invoke-static {v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 222
    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 225
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "external"

    invoke-static {v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 226
    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    :goto_0
    new-array v2, v1, [Lcom/sonyericsson/music/library/BaseFragment$MatcherData;

    const/4 v3, 0x0

    new-instance v4, Lcom/sonyericsson/music/library/BaseFragment$MatcherData;

    sget-boolean v5, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz v5, :cond_1

    const-string v5, "com.sonyericsson.music.musicinfo"

    goto :goto_1

    :cond_1
    const-string v5, "media"

    :goto_1
    invoke-direct {v4, v1, v0, v5}, Lcom/sonyericsson/music/library/BaseFragment$MatcherData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    return-object v2
.end method

.method protected getRootLayoutResource()I
    .locals 1

    const v0, 0x7f0c003f

    return v0
.end method

.method public getScrollAllowed(Z)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public getSubTag()Ljava/lang/String;
    .locals 1

    const-string v0, "folders"

    return-object v0
.end method

.method public isAtBottomOfList()Z
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mListView:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/sonyericsson/music/library/PaddedHeaderListScroller;->isAtBottomOfList(Landroid/widget/AbsListView;)Z

    move-result v0

    return v0
.end method

.method protected isContentFragment()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 107
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 109
    invoke-virtual {p1, v0, v1, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    return-void
.end method

.method protected onApplyTopPadding(II)I
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mPaddingHeader:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setMinimumHeight(I)V

    return p1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 280
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    .line 282
    iget-object v0, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mContextMenuData:Ljava/lang/Object;

    check-cast v0, Lcom/sonyericsson/music/common/MenuUtils$FolderData;

    .line 284
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v1

    .line 285
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v2, 0x0

    invoke-static {v1, p1, v0, v2}, Lcom/sonyericsson/music/common/MenuUtils;->onFolderContextItemSelected(Lcom/sonyericsson/music/MusicActivity;ILcom/sonyericsson/music/common/MenuUtils$FolderData;Lcom/sonyericsson/music/library/GoogleAnalyticsDataAggregator;)Z

    move-result p1

    return p1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6

    .line 256
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 258
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget p2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 259
    iget-object p3, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result p3

    if-ge p2, p3, :cond_0

    return-void

    .line 262
    :cond_0
    iget-object p3, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result p3

    sub-int/2addr p2, p3

    .line 264
    iget-object p3, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mAdapter:Lcom/sonyericsson/music/library/FoldersAdapter;

    invoke-virtual {p3}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result p3

    if-ge p2, p3, :cond_2

    iget-object p3, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mAdapter:Lcom/sonyericsson/music/library/FoldersAdapter;

    .line 265
    invoke-virtual {p3, p2}, Landroid/widget/ArrayAdapter;->getItemViewType(I)I

    move-result p3

    const/4 v0, -0x2

    if-ne p3, v0, :cond_1

    goto :goto_0

    .line 269
    :cond_1
    iget-object p3, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mAdapter:Lcom/sonyericsson/music/library/FoldersAdapter;

    invoke-virtual {p3, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/music/common/Folder;

    .line 270
    new-instance p3, Lcom/sonyericsson/music/common/MenuUtils$FolderData;

    invoke-virtual {p2}, Lcom/sonyericsson/music/common/Folder;->getId()I

    move-result v0

    int-to-long v1, v0

    invoke-virtual {p2}, Lcom/sonyericsson/music/common/Folder;->getName()Ljava/lang/String;

    move-result-object v3

    .line 271
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/Folder;->getPathDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/sonyericsson/music/common/Folder;->getArtUri()Landroid/net/Uri;

    move-result-object v5

    move-object v0, p3

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/music/common/MenuUtils$FolderData;-><init>(JLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 272
    iput-object p3, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mContextMenuData:Ljava/lang/Object;

    .line 274
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object p2

    invoke-static {p2, p3}, Lcom/sonyericsson/music/common/MenuUtils;->getFolderMenuBuilder(Lcom/sonyericsson/music/MusicActivity;Lcom/sonyericsson/music/common/MenuUtils$FolderData;)Lcom/sonyericsson/music/common/ContextMenuBuilder;

    move-result-object p2

    .line 275
    invoke-virtual {p2, p1}, Lcom/sonyericsson/music/common/ContextMenuBuilder;->build(Landroid/view/ContextMenu;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/Set<",
            "Lcom/sonyericsson/music/common/Folder;",
            ">;>;"
        }
    .end annotation

    .line 147
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 149
    new-instance p1, Lcom/sonyericsson/music/library/FoldersFragment$FoldersLoader;

    invoke-direct {p1, p2}, Lcom/sonyericsson/music/library/FoldersFragment$FoldersLoader;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 83
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/music/library/LibraryBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f1002b3

    .line 85
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 86
    invoke-virtual {p0, p2}, Lcom/sonyericsson/music/library/BaseFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 88
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object p2

    .line 89
    new-instance p3, Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    invoke-direct {p3, p2}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    .line 90
    new-instance p3, Lcom/sonyericsson/music/library/FoldersAdapter;

    iget-object v0, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    invoke-direct {p3, p2, v0}, Lcom/sonyericsson/music/library/FoldersAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/music/artdecoder/ArtDecoder;)V

    iput-object p3, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mAdapter:Lcom/sonyericsson/music/library/FoldersAdapter;

    const p3, 0x7f0900f8

    .line 91
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ListView;

    iput-object p3, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mListView:Landroid/widget/ListView;

    .line 92
    new-instance p3, Landroid/view/View;

    iget-object v0, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mPaddingHeader:Landroid/view/View;

    .line 93
    iget-object p3, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mPaddingHeader:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 94
    iget-object p3, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mAdapter:Lcom/sonyericsson/music/library/FoldersAdapter;

    invoke-virtual {p3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    iget-object p3, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 96
    iget-object p3, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p3, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 97
    iget-object p3, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mListView:Landroid/widget/ListView;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 98
    iget-object p3, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    .line 100
    invoke-virtual {p2, p0}, Lcom/sonyericsson/music/MusicActivity;->addPermissionListener(Lcom/sonyericsson/music/common/PermissionListener;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 132
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 119
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getMusicActivity()Lcom/sonyericsson/music/MusicActivity;

    move-result-object v0

    .line 120
    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/MusicActivity;->removePermissionListener(Lcom/sonyericsson/music/common/PermissionListener;)V

    .line 122
    iget-object v0, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->destroy()V

    .line 124
    iput-object v1, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    .line 127
    :cond_0
    invoke-super {p0}, Lcom/sonyericsson/music/library/LibraryBaseFragment;->onDestroyView()V

    return-void
.end method

.method protected onGetToolbarScroller(Lcom/sonyericsson/music/ToolbarControl;)Lcom/sonyericsson/music/ToolbarControl$ToolbarScroller;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mPaddedListScroller:Lcom/sonyericsson/music/library/PaddedHeaderListScroller;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/library/PaddedHeaderListScroller;->getPaddingScroller(Lcom/sonyericsson/music/ToolbarControl;)Lcom/sonyericsson/music/library/PaddedHeaderListScroller$HidePaddingScroller;

    move-result-object p1

    return-object p1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 234
    iget-object p1, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result p1

    if-ge p3, p1, :cond_0

    return-void

    .line 237
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result p1

    sub-int/2addr p3, p1

    .line 238
    iget-object p1, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mAdapter:Lcom/sonyericsson/music/library/FoldersAdapter;

    invoke-virtual {p1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/common/Folder;

    if-eqz p1, :cond_1

    .line 240
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/library/FoldersFragment;->openFolder(Lcom/sonyericsson/music/common/Folder;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 51
    check-cast p2, Ljava/util/Set;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/music/library/FoldersFragment;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/Set;)V

    return-void
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/Set<",
            "Lcom/sonyericsson/music/common/Folder;",
            ">;>;",
            "Ljava/util/Set<",
            "Lcom/sonyericsson/music/common/Folder;",
            ">;)V"
        }
    .end annotation

    .line 156
    iget-object p1, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mAdapter:Lcom/sonyericsson/music/library/FoldersAdapter;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_0

    .line 157
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 158
    invoke-direct {p0}, Lcom/sonyericsson/music/library/FoldersFragment;->removeNoContentHeaderView()V

    goto :goto_0

    .line 160
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/music/library/FoldersFragment;->showNoContentHeaderView()V

    :goto_0
    const/4 p1, 0x0

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    .line 164
    new-array p1, p1, [Lcom/sonyericsson/music/common/Folder;

    invoke-interface {p2, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/sonyericsson/music/common/Folder;

    .line 165
    sget-object p2, Lcom/sonyericsson/music/common/Folder;->sPathComparator:Ljava/util/Comparator;

    invoke-static {p1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 168
    :cond_1
    iget-object p2, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mAdapter:Lcom/sonyericsson/music/library/FoldersAdapter;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/music/library/FoldersAdapter;->swapData([Lcom/sonyericsson/music/common/Folder;)V

    :cond_2
    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Ljava/util/Set<",
            "Lcom/sonyericsson/music/common/Folder;",
            ">;>;)V"
        }
    .end annotation

    .line 174
    iget-object p1, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mAdapter:Lcom/sonyericsson/music/library/FoldersAdapter;

    if-eqz p1, :cond_0

    .line 175
    iget-object p1, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mListView:Landroid/widget/ListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 176
    iget-object p1, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mNoContentHeaderView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 177
    iget-object p1, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mAdapter:Lcom/sonyericsson/music/library/FoldersAdapter;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 178
    iget-object p1, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mAdapter:Lcom/sonyericsson/music/library/FoldersAdapter;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/library/FoldersAdapter;->swapData([Lcom/sonyericsson/music/common/Folder;)V

    :cond_0
    return-void
.end method

.method public onNowPlayingInfoChanged(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 207
    invoke-virtual {p1}, Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;->getSourceUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/library/BaseFragment;->matchUri(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mAdapter:Lcom/sonyericsson/music/library/FoldersAdapter;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/library/FoldersAdapter;->setNowPlayingInfo(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V

    goto :goto_0

    .line 210
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mAdapter:Lcom/sonyericsson/music/library/FoldersAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/library/FoldersAdapter;->setNowPlayingInfo(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfo;)V

    .line 212
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mAdapter:Lcom/sonyericsson/music/library/FoldersAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 200
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 201
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getNowPlayingUpdater()Lcom/sonyericsson/music/NowPlayingUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/NowPlayingUpdater;->removeListener(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfoListener;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 194
    invoke-super {p0}, Lcom/sonyericsson/music/library/BaseFragment;->onResume()V

    .line 195
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicActivity;->getNowPlayingUpdater()Lcom/sonyericsson/music/NowPlayingUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/music/NowPlayingUpdater;->addListener(Lcom/sonyericsson/music/NowPlayingUpdater$NowPlayingInfoListener;)V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 343
    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getToolbarControl()Lcom/sonyericsson/music/ToolbarControl;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/ToolbarControl;->allowScrollOfToolbar(Z)V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 337
    iget-object p1, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mPaddedListScroller:Lcom/sonyericsson/music/library/PaddedHeaderListScroller;

    invoke-virtual {p0}, Lcom/sonyericsson/music/library/BaseFragment;->getToolbarControl()Lcom/sonyericsson/music/ToolbarControl;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/sonyericsson/music/library/PaddedHeaderListScroller;->onPaddedHeaderListScrollStateChanged(Lcom/sonyericsson/music/ToolbarControl;I)V

    return-void
.end method

.method public onStoragePermissionChanged(Z)V
    .locals 2

    .line 137
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 139
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 140
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 141
    invoke-virtual {p1, v0, v1, p0}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    :cond_0
    return-void
.end method

.method public paddingHeightVisible()I
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/sonyericsson/music/library/FoldersFragment;->mPaddingHeader:Landroid/view/View;

    invoke-static {v0}, Lcom/sonyericsson/music/library/PaddedHeaderListScroller;->paddingHeightVisible(Landroid/view/View;)I

    move-result v0

    return v0
.end method
