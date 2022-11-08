.class public Landroidx/core/app/NotificationCompat;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationCompat$BubbleMetadata;,
        Landroidx/core/app/NotificationCompat$CarExtender;,
        Landroidx/core/app/NotificationCompat$WearableExtender;,
        Landroidx/core/app/NotificationCompat$Extender;,
        Landroidx/core/app/NotificationCompat$Action;,
        Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;,
        Landroidx/core/app/NotificationCompat$InboxStyle;,
        Landroidx/core/app/NotificationCompat$MessagingStyle;,
        Landroidx/core/app/NotificationCompat$BigTextStyle;,
        Landroidx/core/app/NotificationCompat$BigPictureStyle;,
        Landroidx/core/app/NotificationCompat$Style;,
        Landroidx/core/app/NotificationCompat$Builder;,
        Landroidx/core/app/NotificationCompat$ServiceNotificationBehavior;,
        Landroidx/core/app/NotificationCompat$GroupAlertBehavior;,
        Landroidx/core/app/NotificationCompat$BadgeIconType;,
        Landroidx/core/app/NotificationCompat$NotificationVisibility;,
        Landroidx/core/app/NotificationCompat$StreamType;
    }
.end annotation


# static fields
.field public static final BADGE_ICON_LARGE:I = 0x2

.field public static final BADGE_ICON_NONE:I = 0x0

.field public static final BADGE_ICON_SMALL:I = 0x1

.field public static final CATEGORY_ALARM:Ljava/lang/String; = "alarm"

.field public static final CATEGORY_CALL:Ljava/lang/String; = "call"

.field public static final CATEGORY_EMAIL:Ljava/lang/String; = "email"

.field public static final CATEGORY_ERROR:Ljava/lang/String; = "err"

.field public static final CATEGORY_EVENT:Ljava/lang/String; = "event"

.field public static final CATEGORY_LOCATION_SHARING:Ljava/lang/String; = "location_sharing"

.field public static final CATEGORY_MESSAGE:Ljava/lang/String; = "msg"

.field public static final CATEGORY_MISSED_CALL:Ljava/lang/String; = "missed_call"

.field public static final CATEGORY_NAVIGATION:Ljava/lang/String; = "navigation"

.field public static final CATEGORY_PROGRESS:Ljava/lang/String; = "progress"

.field public static final CATEGORY_PROMO:Ljava/lang/String; = "promo"

.field public static final CATEGORY_RECOMMENDATION:Ljava/lang/String; = "recommendation"

.field public static final CATEGORY_REMINDER:Ljava/lang/String; = "reminder"

.field public static final CATEGORY_SERVICE:Ljava/lang/String; = "service"

.field public static final CATEGORY_SOCIAL:Ljava/lang/String; = "social"

.field public static final CATEGORY_STATUS:Ljava/lang/String; = "status"

.field public static final CATEGORY_STOPWATCH:Ljava/lang/String; = "stopwatch"

.field public static final CATEGORY_SYSTEM:Ljava/lang/String; = "sys"

.field public static final CATEGORY_TRANSPORT:Ljava/lang/String; = "transport"

.field public static final CATEGORY_WORKOUT:Ljava/lang/String; = "workout"

.field public static final COLOR_DEFAULT:I = 0x0

.field public static final DEFAULT_ALL:I = -0x1

.field public static final DEFAULT_LIGHTS:I = 0x4

.field public static final DEFAULT_SOUND:I = 0x1

.field public static final DEFAULT_VIBRATE:I = 0x2

.field public static final EXTRA_AUDIO_CONTENTS_URI:Ljava/lang/String; = "android.audioContents"

.field public static final EXTRA_BACKGROUND_IMAGE_URI:Ljava/lang/String; = "android.backgroundImageUri"

.field public static final EXTRA_BIG_TEXT:Ljava/lang/String; = "android.bigText"

.field public static final EXTRA_CHANNEL_GROUP_ID:Ljava/lang/String; = "android.intent.extra.CHANNEL_GROUP_ID"

.field public static final EXTRA_CHANNEL_ID:Ljava/lang/String; = "android.intent.extra.CHANNEL_ID"

.field public static final EXTRA_CHRONOMETER_COUNT_DOWN:Ljava/lang/String; = "android.chronometerCountDown"

.field public static final EXTRA_COLORIZED:Ljava/lang/String; = "android.colorized"

.field public static final EXTRA_COMPACT_ACTIONS:Ljava/lang/String; = "android.compactActions"

.field public static final EXTRA_COMPAT_TEMPLATE:Ljava/lang/String; = "androidx.core.app.extra.COMPAT_TEMPLATE"

.field public static final EXTRA_CONVERSATION_TITLE:Ljava/lang/String; = "android.conversationTitle"

.field public static final EXTRA_HIDDEN_CONVERSATION_TITLE:Ljava/lang/String; = "android.hiddenConversationTitle"

.field public static final EXTRA_HISTORIC_MESSAGES:Ljava/lang/String; = "android.messages.historic"

.field public static final EXTRA_INFO_TEXT:Ljava/lang/String; = "android.infoText"

.field public static final EXTRA_IS_GROUP_CONVERSATION:Ljava/lang/String; = "android.isGroupConversation"

.field public static final EXTRA_LARGE_ICON:Ljava/lang/String; = "android.largeIcon"

.field public static final EXTRA_LARGE_ICON_BIG:Ljava/lang/String; = "android.largeIcon.big"

.field public static final EXTRA_MEDIA_SESSION:Ljava/lang/String; = "android.mediaSession"

.field public static final EXTRA_MESSAGES:Ljava/lang/String; = "android.messages"

.field public static final EXTRA_MESSAGING_STYLE_USER:Ljava/lang/String; = "android.messagingStyleUser"

.field public static final EXTRA_NOTIFICATION_ID:Ljava/lang/String; = "android.intent.extra.NOTIFICATION_ID"

.field public static final EXTRA_NOTIFICATION_TAG:Ljava/lang/String; = "android.intent.extra.NOTIFICATION_TAG"

.field public static final EXTRA_PEOPLE:Ljava/lang/String; = "android.people"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_PEOPLE_LIST:Ljava/lang/String; = "android.people.list"

.field public static final EXTRA_PICTURE:Ljava/lang/String; = "android.picture"

.field public static final EXTRA_PICTURE_CONTENT_DESCRIPTION:Ljava/lang/String; = "android.pictureContentDescription"

.field public static final EXTRA_PROGRESS:Ljava/lang/String; = "android.progress"

.field public static final EXTRA_PROGRESS_INDETERMINATE:Ljava/lang/String; = "android.progressIndeterminate"

.field public static final EXTRA_PROGRESS_MAX:Ljava/lang/String; = "android.progressMax"

.field public static final EXTRA_REMOTE_INPUT_HISTORY:Ljava/lang/String; = "android.remoteInputHistory"

.field public static final EXTRA_SELF_DISPLAY_NAME:Ljava/lang/String; = "android.selfDisplayName"

.field public static final EXTRA_SHOW_BIG_PICTURE_WHEN_COLLAPSED:Ljava/lang/String; = "android.showBigPictureWhenCollapsed"

.field public static final EXTRA_SHOW_CHRONOMETER:Ljava/lang/String; = "android.showChronometer"

.field public static final EXTRA_SHOW_WHEN:Ljava/lang/String; = "android.showWhen"

.field public static final EXTRA_SMALL_ICON:Ljava/lang/String; = "android.icon"

.field public static final EXTRA_SUB_TEXT:Ljava/lang/String; = "android.subText"

.field public static final EXTRA_SUMMARY_TEXT:Ljava/lang/String; = "android.summaryText"

.field public static final EXTRA_TEMPLATE:Ljava/lang/String; = "android.template"

.field public static final EXTRA_TEXT:Ljava/lang/String; = "android.text"

.field public static final EXTRA_TEXT_LINES:Ljava/lang/String; = "android.textLines"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "android.title"

.field public static final EXTRA_TITLE_BIG:Ljava/lang/String; = "android.title.big"

.field public static final FLAG_AUTO_CANCEL:I = 0x10

.field public static final FLAG_BUBBLE:I = 0x1000

.field public static final FLAG_FOREGROUND_SERVICE:I = 0x40

.field public static final FLAG_GROUP_SUMMARY:I = 0x200

.field public static final FLAG_HIGH_PRIORITY:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_INSISTENT:I = 0x4

.field public static final FLAG_LOCAL_ONLY:I = 0x100

.field public static final FLAG_NO_CLEAR:I = 0x20

.field public static final FLAG_ONGOING_EVENT:I = 0x2

.field public static final FLAG_ONLY_ALERT_ONCE:I = 0x8

.field public static final FLAG_SHOW_LIGHTS:I = 0x1

.field public static final FOREGROUND_SERVICE_DEFAULT:I = 0x0

.field public static final FOREGROUND_SERVICE_DEFERRED:I = 0x2

.field public static final FOREGROUND_SERVICE_IMMEDIATE:I = 0x1

.field public static final GROUP_ALERT_ALL:I = 0x0

.field public static final GROUP_ALERT_CHILDREN:I = 0x2

.field public static final GROUP_ALERT_SUMMARY:I = 0x1

.field public static final GROUP_KEY_SILENT:Ljava/lang/String; = "silent"

.field public static final INTENT_CATEGORY_NOTIFICATION_PREFERENCES:Ljava/lang/String; = "android.intent.category.NOTIFICATION_PREFERENCES"

.field public static final PRIORITY_DEFAULT:I = 0x0

.field public static final PRIORITY_HIGH:I = 0x1

.field public static final PRIORITY_LOW:I = -0x1

.field public static final PRIORITY_MAX:I = 0x2

.field public static final PRIORITY_MIN:I = -0x2

.field public static final STREAM_DEFAULT:I = -0x1

.field public static final VISIBILITY_PRIVATE:I = 0x0

.field public static final VISIBILITY_PUBLIC:I = 0x1

.field public static final VISIBILITY_SECRET:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7885
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7886
    return-void
.end method

.method public static getAction(Landroid/app/Notification;I)Landroidx/core/app/NotificationCompat$Action;
    .locals 6
    .param p0, "notification"    # Landroid/app/Notification;
    .param p1, "actionIndex"    # I

    .line 7446
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 7447
    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    aget-object v0, v0, p1

    invoke-static {v0}, Landroidx/core/app/NotificationCompat;->getActionCompatFromAction(Landroid/app/Notification$Action;)Landroidx/core/app/NotificationCompat$Action;

    move-result-object v0

    return-object v0

    .line 7448
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 7449
    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    aget-object v0, v0, p1

    .line 7450
    .local v0, "action":Landroid/app/Notification$Action;
    const/4 v1, 0x0

    .line 7451
    .local v1, "actionExtras":Landroid/os/Bundle;
    iget-object v2, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.support.actionExtras"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v2

    .line 7453
    .local v2, "actionExtrasMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;"
    if-eqz v2, :cond_1

    .line 7454
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Landroid/os/Bundle;

    .line 7456
    :cond_1
    iget v3, v0, Landroid/app/Notification$Action;->icon:I

    iget-object v4, v0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v5, v0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-static {v3, v4, v5, v1}, Landroidx/core/app/NotificationCompatJellybean;->readAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Action;

    move-result-object v3

    return-object v3

    .line 7458
    .end local v0    # "action":Landroid/app/Notification$Action;
    .end local v1    # "actionExtras":Landroid/os/Bundle;
    .end local v2    # "actionExtrasMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;"
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    .line 7459
    invoke-static {p0, p1}, Landroidx/core/app/NotificationCompatJellybean;->getAction(Landroid/app/Notification;I)Landroidx/core/app/NotificationCompat$Action;

    move-result-object v0

    return-object v0

    .line 7461
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method static getActionCompatFromAction(Landroid/app/Notification$Action;)Landroidx/core/app/NotificationCompat$Action;
    .locals 32
    .param p0, "action"    # Landroid/app/Notification$Action;

    .line 7485
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v1

    .line 7486
    .local v1, "srcArray":[Landroid/app/RemoteInput;
    const/16 v2, 0x1d

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 7487
    const/4 v4, 0x0

    .local v4, "remoteInputs":[Landroidx/core/app/RemoteInput;
    goto :goto_2

    .line 7489
    .end local v4    # "remoteInputs":[Landroidx/core/app/RemoteInput;
    :cond_0
    array-length v4, v1

    new-array v4, v4, [Landroidx/core/app/RemoteInput;

    .line 7490
    .restart local v4    # "remoteInputs":[Landroidx/core/app/RemoteInput;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_2

    .line 7491
    aget-object v6, v1, v5

    .line 7492
    .local v6, "src":Landroid/app/RemoteInput;
    new-instance v15, Landroidx/core/app/RemoteInput;

    .line 7493
    invoke-virtual {v6}, Landroid/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v8

    .line 7494
    invoke-virtual {v6}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v9

    .line 7495
    invoke-virtual {v6}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v10

    .line 7496
    invoke-virtual {v6}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v11

    .line 7497
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v2, :cond_1

    .line 7498
    invoke-virtual {v6}, Landroid/app/RemoteInput;->getEditChoicesBeforeSending()I

    move-result v7

    move v12, v7

    goto :goto_1

    .line 7499
    :cond_1
    move v12, v3

    .line 7500
    :goto_1
    invoke-virtual {v6}, Landroid/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    const/4 v14, 0x0

    move-object v7, v15

    invoke-direct/range {v7 .. v14}, Landroidx/core/app/RemoteInput;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZILandroid/os/Bundle;Ljava/util/Set;)V

    aput-object v15, v4, v5

    .line 7490
    .end local v6    # "src":Landroid/app/RemoteInput;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 7506
    .end local v5    # "i":I
    :cond_2
    :goto_2
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    const-string v7, "android.support.allowGeneratedReplies"

    const/4 v8, 0x1

    if-lt v5, v6, :cond_5

    .line 7507
    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 7509
    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->getAllowGeneratedReplies()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    move v5, v3

    goto :goto_4

    :cond_4
    :goto_3
    move v5, v8

    .local v5, "allowGeneratedReplies":Z
    :goto_4
    goto :goto_5

    .line 7511
    .end local v5    # "allowGeneratedReplies":Z
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 7515
    .restart local v5    # "allowGeneratedReplies":Z
    :goto_5
    nop

    .line 7516
    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "android.support.action.showsUserInterface"

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v30

    .line 7519
    .local v30, "showsUserInterface":Z
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1c

    if-lt v6, v7, :cond_6

    .line 7520
    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->getSemanticAction()I

    move-result v6

    move/from16 v31, v6

    .local v6, "semanticAction":I
    goto :goto_6

    .line 7522
    .end local v6    # "semanticAction":I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "android.support.action.semanticAction"

    invoke-virtual {v6, v7, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    move/from16 v31, v6

    .line 7526
    .local v31, "semanticAction":I
    :goto_6
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->isContextual()Z

    move-result v2

    move/from16 v16, v2

    goto :goto_7

    :cond_7
    move/from16 v16, v3

    .line 7529
    .local v16, "isContextual":Z
    :goto_7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1f

    if-lt v2, v6, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->isAuthenticationRequired()Z

    move-result v3

    :cond_8
    move/from16 v17, v3

    .line 7531
    .local v17, "authRequired":Z
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_b

    .line 7532
    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    if-nez v2, :cond_9

    iget v2, v0, Landroid/app/Notification$Action;->icon:I

    if-eqz v2, :cond_9

    .line 7533
    new-instance v2, Landroidx/core/app/NotificationCompat$Action;

    iget v7, v0, Landroid/app/Notification$Action;->icon:I

    iget-object v8, v0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v9, v0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 7534
    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    const/4 v12, 0x0

    move-object v6, v2

    move-object v11, v4

    move v13, v5

    move/from16 v14, v31

    move/from16 v15, v30

    invoke-direct/range {v6 .. v17}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;[Landroidx/core/app/RemoteInput;ZIZZZ)V

    .line 7533
    return-object v2

    .line 7537
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    if-nez v2, :cond_a

    .line 7538
    const/4 v2, 0x0

    goto :goto_8

    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/graphics/drawable/IconCompat;->createFromIconOrNullIfZeroResId(Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    :goto_8
    move-object/from16 v19, v2

    .line 7539
    .local v19, "icon":Landroidx/core/graphics/drawable/IconCompat;
    new-instance v2, Landroidx/core/app/NotificationCompat$Action;

    iget-object v3, v0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v6, v0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v22

    const/16 v24, 0x0

    move-object/from16 v18, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v6

    move-object/from16 v23, v4

    move/from16 v25, v5

    move/from16 v26, v31

    move/from16 v27, v30

    move/from16 v28, v16

    move/from16 v29, v17

    invoke-direct/range {v18 .. v29}, Landroidx/core/app/NotificationCompat$Action;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;[Landroidx/core/app/RemoteInput;ZIZZZ)V

    return-object v2

    .line 7543
    .end local v19    # "icon":Landroidx/core/graphics/drawable/IconCompat;
    :cond_b
    new-instance v2, Landroidx/core/app/NotificationCompat$Action;

    iget v3, v0, Landroid/app/Notification$Action;->icon:I

    iget-object v6, v0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v7, v0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v22

    const/16 v24, 0x0

    move-object/from16 v18, v2

    move/from16 v19, v3

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v23, v4

    move/from16 v25, v5

    move/from16 v26, v31

    move/from16 v27, v30

    move/from16 v28, v16

    move/from16 v29, v17

    invoke-direct/range {v18 .. v29}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;[Landroidx/core/app/RemoteInput;ZIZZZ)V

    return-object v2
.end method

.method public static getActionCount(Landroid/app/Notification;)I
    .locals 3
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7429
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-lt v0, v2, :cond_1

    .line 7430
    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v1, v0

    :cond_0
    return v1

    .line 7431
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_2

    .line 7432
    invoke-static {p0}, Landroidx/core/app/NotificationCompatJellybean;->getActionCount(Landroid/app/Notification;)I

    move-result v0

    return v0

    .line 7434
    :cond_2
    return v1
.end method

.method public static getAllowSystemGeneratedContextualActions(Landroid/app/Notification;)Z
    .locals 2
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7875
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 7876
    invoke-virtual {p0}, Landroid/app/Notification;->getAllowSystemGeneratedContextualActions()Z

    move-result v0

    return v0

    .line 7878
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getAutoCancel(Landroid/app/Notification;)Z
    .locals 1
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7694
    iget v0, p0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getBadgeIconType(Landroid/app/Notification;)I
    .locals 2
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7808
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 7809
    invoke-virtual {p0}, Landroid/app/Notification;->getBadgeIconType()I

    move-result v0

    return v0

    .line 7811
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getBubbleMetadata(Landroid/app/Notification;)Landroidx/core/app/NotificationCompat$BubbleMetadata;
    .locals 2
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7474
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 7475
    invoke-virtual {p0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->fromPlatform(Landroid/app/Notification$BubbleMetadata;)Landroidx/core/app/NotificationCompat$BubbleMetadata;

    move-result-object v0

    return-object v0

    .line 7477
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCategory(Landroid/app/Notification;)Ljava/lang/String;
    .locals 2
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7628
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 7629
    iget-object v0, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    return-object v0

    .line 7631
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getChannelId(Landroid/app/Notification;)Ljava/lang/String;
    .locals 2
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7783
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 7784
    invoke-virtual {p0}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7786
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getColor(Landroid/app/Notification;)I
    .locals 2
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7704
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 7705
    iget v0, p0, Landroid/app/Notification;->color:I

    return v0

    .line 7707
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getContentInfo(Landroid/app/Notification;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7613
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.infoText"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getContentText(Landroid/app/Notification;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7607
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getContentTitle(Landroid/app/Notification;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7601
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getExtras(Landroid/app/Notification;)Landroid/os/Bundle;
    .locals 2
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7415
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 7416
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    return-object v0

    .line 7417
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 7418
    invoke-static {p0}, Landroidx/core/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 7420
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getGroup(Landroid/app/Notification;)Ljava/lang/String;
    .locals 3
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7659
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 7660
    invoke-virtual {p0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7661
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    const-string v2, "android.support.groupKey"

    if-lt v0, v1, :cond_1

    .line 7662
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7663
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 7664
    invoke-static {p0}, Landroidx/core/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7667
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getGroupAlertBehavior(Landroid/app/Notification;)I
    .locals 2
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7862
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 7863
    invoke-virtual {p0}, Landroid/app/Notification;->getGroupAlertBehavior()I

    move-result v0

    return v0

    .line 7865
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static getHighPriority(Landroid/app/Notification;)Z
    .locals 1
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7732
    iget v0, p0, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getInvisibleActions(Landroid/app/Notification;)Ljava/util/List;
    .locals 5
    .param p0, "notification"    # Landroid/app/Notification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Notification;",
            ")",
            "Ljava/util/List<",
            "Landroidx/core/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation

    .line 7552
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7553
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/app/NotificationCompat$Action;>;"
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 7554
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 7555
    const-string v2, "android.car.EXTENSIONS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 7556
    .local v1, "carExtenderBundle":Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 7557
    return-object v0

    .line 7560
    :cond_0
    const-string v2, "invisible_actions"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 7561
    .local v2, "listBundle":Landroid/os/Bundle;
    if-eqz v2, :cond_1

    .line 7562
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 7563
    nop

    .line 7564
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 7563
    invoke-static {v4}, Landroidx/core/app/NotificationCompatJellybean;->getActionFromBundle(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Action;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7562
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7568
    .end local v1    # "carExtenderBundle":Landroid/os/Bundle;
    .end local v2    # "listBundle":Landroid/os/Bundle;
    .end local v3    # "i":I
    :cond_1
    return-object v0
.end method

.method public static getLocalOnly(Landroid/app/Notification;)Z
    .locals 4
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7642
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x14

    if-lt v0, v2, :cond_1

    .line 7643
    iget v0, p0, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 7644
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    const-string v3, "android.support.localOnly"

    if-lt v0, v2, :cond_2

    .line 7645
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 7646
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_3

    .line 7647
    invoke-static {p0}, Landroidx/core/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 7650
    :cond_3
    return v1
.end method

.method public static getLocusId(Landroid/app/Notification;)Landroidx/core/content/LocusIdCompat;
    .locals 3
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7847
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_1

    .line 7848
    invoke-virtual {p0}, Landroid/app/Notification;->getLocusId()Landroid/content/LocusId;

    move-result-object v0

    .line 7849
    .local v0, "locusId":Landroid/content/LocusId;
    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroidx/core/content/LocusIdCompat;->toLocusIdCompat(Landroid/content/LocusId;)Landroidx/core/content/LocusIdCompat;

    move-result-object v1

    :goto_0
    return-object v1

    .line 7851
    .end local v0    # "locusId":Landroid/content/LocusId;
    :cond_1
    return-object v1
.end method

.method static getNotificationArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/app/Notification;
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .line 7396
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 7397
    .local v0, "array":[Landroid/os/Parcelable;
    instance-of v1, v0, [Landroid/app/Notification;

    if-nez v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_1

    .line 7400
    :cond_0
    array-length v1, v0

    new-array v1, v1, [Landroid/app/Notification;

    .line 7401
    .local v1, "typedArray":[Landroid/app/Notification;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 7402
    aget-object v3, v0, v2

    check-cast v3, Landroid/app/Notification;

    aput-object v3, v1, v2

    .line 7401
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7404
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 7405
    return-object v1

    .line 7398
    .end local v1    # "typedArray":[Landroid/app/Notification;
    :cond_2
    :goto_1
    move-object v1, v0

    check-cast v1, [Landroid/app/Notification;

    return-object v1
.end method

.method public static getOngoing(Landroid/app/Notification;)Z
    .locals 1
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7699
    iget v0, p0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getOnlyAlertOnce(Landroid/app/Notification;)Z
    .locals 1
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7689
    iget v0, p0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getPeople(Landroid/app/Notification;)Ljava/util/List;
    .locals 6
    .param p0, "notification"    # Landroid/app/Notification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Notification;",
            ")",
            "Ljava/util/List<",
            "Landroidx/core/app/Person;",
            ">;"
        }
    .end annotation

    .line 7578
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7579
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/core/app/Person;>;"
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    .line 7580
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 7581
    const-string v2, "android.people.list"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 7582
    .local v1, "peopleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Person;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 7583
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Person;

    .line 7584
    .local v3, "person":Landroid/app/Person;
    invoke-static {v3}, Landroidx/core/app/Person;->fromAndroidPerson(Landroid/app/Person;)Landroidx/core/app/Person;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7585
    .end local v3    # "person":Landroid/app/Person;
    goto :goto_0

    .line 7587
    .end local v1    # "peopleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Person;>;"
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 7588
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.people"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 7589
    .local v1, "peopleArray":[Ljava/lang/String;
    if-eqz v1, :cond_2

    array-length v2, v1

    if-eqz v2, :cond_2

    .line 7590
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 7591
    .local v4, "personUri":Ljava/lang/String;
    new-instance v5, Landroidx/core/app/Person$Builder;

    invoke-direct {v5}, Landroidx/core/app/Person$Builder;-><init>()V

    invoke-virtual {v5, v4}, Landroidx/core/app/Person$Builder;->setUri(Ljava/lang/String;)Landroidx/core/app/Person$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/core/app/Person$Builder;->build()Landroidx/core/app/Person;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7590
    .end local v4    # "personUri":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 7587
    .end local v1    # "peopleArray":[Ljava/lang/String;
    :cond_1
    nop

    .line 7595
    :cond_2
    return-object v0
.end method

.method public static getPublicVersion(Landroid/app/Notification;)Landroid/app/Notification;
    .locals 2
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7722
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 7723
    iget-object v0, p0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    return-object v0

    .line 7725
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSettingsText(Landroid/app/Notification;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7831
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 7832
    invoke-virtual {p0}, Landroid/app/Notification;->getSettingsText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 7834
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getShortcutId(Landroid/app/Notification;)Ljava/lang/String;
    .locals 2
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7820
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 7821
    invoke-virtual {p0}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7823
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getShowWhen(Landroid/app/Notification;)Z
    .locals 2
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7676
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.showWhen"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getSortKey(Landroid/app/Notification;)Ljava/lang/String;
    .locals 3
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7767
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 7768
    invoke-virtual {p0}, Landroid/app/Notification;->getSortKey()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7769
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    const-string v2, "android.support.sortKey"

    if-lt v0, v1, :cond_1

    .line 7770
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7771
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 7772
    invoke-static {p0}, Landroidx/core/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7775
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSubText(Landroid/app/Notification;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7619
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.subText"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getTimeoutAfter(Landroid/app/Notification;)J
    .locals 2
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7795
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 7796
    invoke-virtual {p0}, Landroid/app/Notification;->getTimeoutAfter()J

    move-result-wide v0

    return-wide v0

    .line 7798
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getUsesChronometer(Landroid/app/Notification;)Z
    .locals 2
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7684
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.showChronometer"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getVisibility(Landroid/app/Notification;)I
    .locals 2
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7713
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 7714
    iget v0, p0, Landroid/app/Notification;->visibility:I

    return v0

    .line 7716
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isGroupSummary(Landroid/app/Notification;)Z
    .locals 4
    .param p0, "notification"    # Landroid/app/Notification;

    .line 7742
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x14

    if-lt v0, v2, :cond_1

    .line 7743
    iget v0, p0, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 7744
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    const-string v3, "android.support.isGroupSummary"

    if-lt v0, v2, :cond_2

    .line 7745
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 7746
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_3

    .line 7747
    invoke-static {p0}, Landroidx/core/app/NotificationCompatJellybean;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 7750
    :cond_3
    return v1
.end method
