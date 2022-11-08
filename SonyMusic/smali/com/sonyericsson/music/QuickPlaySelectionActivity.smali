.class public Lcom/sonyericsson/music/QuickPlaySelectionActivity;
.super Lcom/sonyericsson/music/ThemedActivity;
.source "QuickPlaySelectionActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/QuickPlaySelectionActivity$GetPlaylistNameTask;
    }
.end annotation


# static fields
.field private static final QUICKPLAY_PICK_PLAYLIST_REQ:I = 0x17

.field public static final TAG:Ljava/lang/String; = "quickplay_selection"

.field private static final sButtonsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/music/common/QuickPlayUtils$Type;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAllTracksGroup:Landroid/view/View;

.field private mAllTracksRadioButton:Landroid/widget/RadioButton;

.field private mHideGroup:Landroid/view/View;

.field private mHideRadioButton:Landroid/widget/RadioButton;

.field private mPlaylistGroup:Landroid/view/View;

.field private mPlaylistRadioButton:Landroid/widget/RadioButton;

.field private mSelectPlaylistGroup:Landroid/view/View;

.field private mSelectedPlaylistName:Ljava/lang/String;

.field private mSelectedPlaylistNameView:Landroid/widget/TextView;

.field private mSelectedType:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->sButtonsMap:Ljava/util/Map;

    .line 65
    sget-object v0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->sButtonsMap:Ljava/util/Map;

    sget-object v1, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->ALL_TRACKS:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    const v2, 0x7f090049

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->sButtonsMap:Ljava/util/Map;

    sget-object v1, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->USER_PLAYLIST:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    const v2, 0x7f09018a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->sButtonsMap:Ljava/util/Map;

    sget-object v1, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->HIDE_BUTTON:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    const v2, 0x7f0900cd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/sonyericsson/music/ThemedActivity;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mSelectedType:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    return-void
.end method

.method private checkAllTracksRadioOption()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mAllTracksRadioButton:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 201
    iget-object v0, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mPlaylistRadioButton:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 202
    iget-object v0, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mHideRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method

.method private checkHideRadioOption()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mAllTracksRadioButton:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 213
    iget-object v0, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mPlaylistRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 214
    iget-object v0, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mHideRadioButton:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method

.method private checkPlaylistRadioOption()V
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mAllTracksRadioButton:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 207
    iget-object v0, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mPlaylistRadioButton:Landroid/widget/RadioButton;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 208
    iget-object v0, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mHideRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    return-void
.end method

.method private getRadioButtonId(Lcom/sonyericsson/music/common/QuickPlayUtils$Type;)I
    .locals 2

    .line 378
    sget-object v0, Lcom/sonyericsson/music/QuickPlaySelectionActivity$2;->$SwitchMap$com$sonyericsson$music$common$QuickPlayUtils$Type:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 388
    :cond_0
    :pswitch_0
    sget-object p1, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->USER_PLAYLIST:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    .line 395
    :goto_0
    sget-object v0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->sButtonsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 396
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    const p1, 0x7f090049

    :goto_1
    return p1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setUpOptions(Landroid/view/View;)V
    .locals 4

    .line 355
    sget-object v0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->sButtonsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 356
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    .line 358
    sget-object v2, Lcom/sonyericsson/music/QuickPlaySelectionActivity$2;->$SwitchMap$com$sonyericsson$music$common$QuickPlayUtils$Type:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v2, 0x7f0900ce

    .line 368
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 369
    invoke-virtual {v1}, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->getRadioButtonTextResId()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_1
    const v2, 0x7f09018b

    .line 364
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 365
    invoke-virtual {v1}, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->getRadioButtonTextResId()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_2
    const v2, 0x7f09004a

    .line 360
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 361
    invoke-virtual {v1}, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->getRadioButtonTextResId()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static start(Landroid/app/Activity;)V
    .locals 2

    .line 74
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 75
    const-class v1, Lcom/sonyericsson/music/QuickPlaySelectionActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 76
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateQuickPlayType()V
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mSelectedType:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->getSharedPrefsValue()Ljava/lang/String;

    move-result-object v0

    .line 403
    invoke-static {p0, v0}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->setQuickPlayType(Landroid/content/Context;Ljava/lang/String;)V

    .line 404
    new-instance v0, Lcom/sonyericsson/music/datacollection/firebase/FirebaseQuickPlaySelectionTask;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseQuickPlaySelectionTask;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseQuickPlaySelectionTask;->run()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/16 p2, 0x17

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_1

    .line 277
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 280
    invoke-static {p1}, Lcom/sonyericsson/music/common/QuickPlayUtils;->translateSmartPlaylistContainerUriToType(Landroid/net/Uri;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 283
    sget-object p3, Lcom/sonyericsson/music/QuickPlaySelectionActivity$2;->$SwitchMap$com$sonyericsson$music$common$SmartPlaylistUtils$SmartPlaylistType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p3, p3, v0

    packed-switch p3, :pswitch_data_0

    .line 301
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected QuickPlay type: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 289
    :pswitch_0
    sget-object p2, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->MOST_PLAYED:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    iput-object p2, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mSelectedType:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    const p2, 0x7f1001ca

    .line 290
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mSelectedPlaylistName:Ljava/lang/String;

    goto :goto_0

    .line 297
    :pswitch_1
    sget-object p2, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->NEWLY_ADDED:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    iput-object p2, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mSelectedType:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    const p2, 0x7f1001cf

    .line 298
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mSelectedPlaylistName:Ljava/lang/String;

    goto :goto_0

    .line 293
    :pswitch_2
    sget-object p2, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->RECENTLY_PLAYED:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    iput-object p2, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mSelectedType:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    const p2, 0x7f1001de

    .line 294
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mSelectedPlaylistName:Ljava/lang/String;

    goto :goto_0

    .line 285
    :pswitch_3
    sget-object p2, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->FAVORITES:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    iput-object p2, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mSelectedType:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    const p2, 0x7f1001cb

    .line 286
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mSelectedPlaylistName:Ljava/lang/String;

    .line 305
    :goto_0
    iget-object p2, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mSelectedPlaylistNameView:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mSelectedPlaylistName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    invoke-static {p0, p1}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->setQuickPlayPlaylistUri(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_1

    .line 310
    :cond_0
    :try_start_0
    sget-object p2, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->USER_PLAYLIST:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    iput-object p2, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mSelectedType:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    .line 311
    invoke-static {p0, p1}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->setQuickPlayPlaylistUri(Landroid/content/Context;Landroid/net/Uri;)V

    .line 312
    new-instance p2, Lcom/sonyericsson/music/QuickPlaySelectionActivity$GetPlaylistNameTask;

    invoke-direct {p2, p0}, Lcom/sonyericsson/music/QuickPlaySelectionActivity$GetPlaylistNameTask;-><init>(Lcom/sonyericsson/music/QuickPlaySelectionActivity;)V

    sget-object p3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p2, p3, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :catch_0
    :goto_1
    invoke-direct {p0}, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->checkPlaylistRadioOption()V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 0

    .line 348
    invoke-direct {p0}, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->updateQuickPlayType()V

    .line 349
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 350
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 219
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    const v0, 0x7f090049

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    const v0, 0x7f0900cd

    if-eq p1, v0, :cond_3

    const v0, 0x7f09018a

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz p2, :cond_5

    .line 231
    sget-object p1, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->ALL_TRACKS:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    iput-object p1, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mSelectedType:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    .line 232
    invoke-static {p0}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->getQuickPlayPlaylistUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 235
    invoke-static {p1}, Lcom/sonyericsson/music/common/QuickPlayUtils;->translateSmartPlaylistContainerUriToType(Landroid/net/Uri;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 238
    sget-object p2, Lcom/sonyericsson/music/QuickPlaySelectionActivity$2;->$SwitchMap$com$sonyericsson$music$common$SmartPlaylistUtils$SmartPlaylistType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 243
    :pswitch_0
    sget-object p1, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->MOST_PLAYED:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    iput-object p1, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mSelectedType:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    goto :goto_0

    .line 249
    :pswitch_1
    sget-object p1, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->NEWLY_ADDED:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    iput-object p1, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mSelectedType:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    goto :goto_0

    .line 246
    :pswitch_2
    sget-object p1, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->RECENTLY_PLAYED:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    iput-object p1, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mSelectedType:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    goto :goto_0

    .line 240
    :pswitch_3
    sget-object p1, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->FAVORITES:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    iput-object p1, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mSelectedType:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    goto :goto_0

    .line 254
    :cond_1
    sget-object p1, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->USER_PLAYLIST:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    iput-object p1, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mSelectedType:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    .line 256
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mAllTracksRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 257
    iget-object p1, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mHideRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 259
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->startPlaylistPicker()V

    .line 260
    iget-object p1, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mPlaylistRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_5

    .line 266
    sget-object p1, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->HIDE_BUTTON:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    iput-object p1, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mSelectedType:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    .line 267
    iget-object p1, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mAllTracksRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 268
    iget-object p1, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mPlaylistRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    .line 224
    sget-object p1, Lcom/sonyericsson/music/common/QuickPlayUtils$Type;->ALL_TRACKS:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    iput-object p1, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mSelectedType:Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    .line 225
    iget-object p1, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mPlaylistRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 226
    iget-object p1, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mHideRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_5
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 174
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09004b

    if-eq p1, v0, :cond_3

    const v0, 0x7f0900cf

    if-eq p1, v0, :cond_2

    const v0, 0x7f09018c

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->getQuickPlayPlaylistUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_1

    .line 180
    invoke-virtual {p0}, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->startPlaylistPicker()V

    goto :goto_0

    .line 182
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->checkPlaylistRadioOption()V

    goto :goto_0

    .line 186
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->checkHideRadioOption()V

    goto :goto_0

    .line 176
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->checkAllTracksRadioOption()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 81
    invoke-super {p0, p1}, Lcom/sonyericsson/music/ThemedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-static {p0}, Lcom/sonyericsson/music/common/UIUtils;->setDefaultLightSystemUI(Landroid/app/Activity;)V

    const p1, 0x7f0c00ab

    const/4 v0, 0x0

    .line 84
    invoke-static {p0, p1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 85
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 87
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v2, 0x7f1000df

    .line 90
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    :cond_0
    const v0, 0x7f090049

    .line 93
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mAllTracksRadioButton:Landroid/widget/RadioButton;

    const v2, 0x7f09018a

    .line 94
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mPlaylistRadioButton:Landroid/widget/RadioButton;

    const v3, 0x7f0900cd

    .line 95
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mHideRadioButton:Landroid/widget/RadioButton;

    const v4, 0x7f09018d

    .line 96
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mSelectedPlaylistNameView:Landroid/widget/TextView;

    const v4, 0x7f09005f

    .line 97
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mSelectPlaylistGroup:Landroid/view/View;

    const v4, 0x7f09004b

    .line 98
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mAllTracksGroup:Landroid/view/View;

    const v4, 0x7f09018c

    .line 99
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mPlaylistGroup:Landroid/view/View;

    const v4, 0x7f0900cf

    .line 100
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mHideGroup:Landroid/view/View;

    .line 102
    iget-object v4, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mAllTracksGroup:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v4, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mPlaylistGroup:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v4, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mHideGroup:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v4, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mAllTracksRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v4, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v4, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mPlaylistRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v4, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v4, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mHideRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v4, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v4, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mAllTracksRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v4, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 110
    iget-object v4, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mPlaylistRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v4, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 111
    iget-object v4, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mHideRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v4, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 113
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->setUpOptions(Landroid/view/View;)V

    .line 115
    invoke-static {p0}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->getQuickPlayType(Landroid/content/Context;)Lcom/sonyericsson/music/common/QuickPlayUtils$Type;

    move-result-object p1

    .line 116
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->getRadioButtonId(Lcom/sonyericsson/music/common/QuickPlayUtils$Type;)I

    move-result p1

    if-eq p1, v0, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 121
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->checkPlaylistRadioOption()V

    goto :goto_0

    .line 124
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->checkHideRadioOption()V

    goto :goto_0

    .line 118
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->checkAllTracksRadioOption()V

    .line 128
    :goto_0
    invoke-static {p0}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->getQuickPlayPlaylistUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 129
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 131
    invoke-static {p1}, Lcom/sonyericsson/music/common/QuickPlayUtils;->translateSmartPlaylistContainerUriToType(Landroid/net/Uri;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object v0

    if-nez v0, :cond_4

    .line 134
    new-instance v0, Lcom/sonyericsson/music/QuickPlaySelectionActivity$GetPlaylistNameTask;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/QuickPlaySelectionActivity$GetPlaylistNameTask;-><init>(Lcom/sonyericsson/music/QuickPlaySelectionActivity;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    invoke-virtual {v0, v2, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 137
    :cond_4
    sget-object p1, Lcom/sonyericsson/music/QuickPlaySelectionActivity$2;->$SwitchMap$com$sonyericsson$music$common$SmartPlaylistUtils$SmartPlaylistType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p1, p1, v1

    packed-switch p1, :pswitch_data_0

    .line 148
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected QuickPlay type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 145
    :pswitch_0
    iget-object p1, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mSelectedPlaylistNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getNameResourceId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_5
    const p1, 0x7f10026f

    .line 154
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->setPlaylistName(Ljava/lang/String;)V

    .line 157
    :goto_1
    iget-object p1, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mSelectPlaylistGroup:Landroid/view/View;

    new-instance v0, Lcom/sonyericsson/music/QuickPlaySelectionActivity$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/QuickPlaySelectionActivity$1;-><init>(Lcom/sonyericsson/music/QuickPlaySelectionActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 333
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 334
    invoke-direct {p0}, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->updateQuickPlayType()V

    .line 335
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 338
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 327
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 328
    invoke-direct {p0}, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->updateQuickPlayType()V

    return-void
.end method

.method protected provideTheme()Lcom/sonyericsson/music/ThemedActivity$Theme;
    .locals 1

    .line 343
    sget-object v0, Lcom/sonyericsson/music/ThemedActivity$Theme;->SETTINGS:Lcom/sonyericsson/music/ThemedActivity$Theme;

    return-object v0
.end method

.method setPlaylistName(Ljava/lang/String;)V
    .locals 1

    .line 409
    iput-object p1, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mSelectedPlaylistName:Ljava/lang/String;

    .line 410
    iget-object v0, p0, Lcom/sonyericsson/music/QuickPlaySelectionActivity;->mSelectedPlaylistNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method startPlaylistPicker()V
    .locals 3

    .line 166
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.music.ACTION_QUICKPLAY_PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    const-class v1, Lcom/sonyericsson/music/picker/MusicPickerActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.dir/playlists"

    .line 168
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x17

    const/4 v2, 0x0

    .line 169
    invoke-virtual {p0, v0, v1, v2}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method
